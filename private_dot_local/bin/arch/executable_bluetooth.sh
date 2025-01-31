#!/bin/bash

# Replace this with the name of the Bluetooth device you want to connect to
TARGET_NAME="JBL Go 3"

# Check if bluetoothctl command is available
if ! command -v bluetoothctl &>/dev/null; then
    notify-send "Error" "bluetoothctl is not installed or not in the system path."
    exit 1
fi

# Check if Bluetooth is powered on
BLUETOOTH_POWERED=$(bluetoothctl show | grep "Powered: yes")
if [[ -z "$BLUETOOTH_POWERED" ]]; then
    notify-send "Bluetooth" "Bluetooth is off."
    exit 1
fi

# Find the MAC address of the device by its name
TARGET_MAC=$(bluetoothctl devices | grep "$TARGET_NAME" | awk '{print $2}')

if [[ -z "$TARGET_MAC" ]]; then
    notify-send "Error" "Device with name '$TARGET_NAME' not found."
    exit 1
fi

# Check if the device is paired
PAIRED=$(bluetoothctl devices Paired | grep "$TARGET_MAC")
if [[ -z "$PAIRED" ]]; then
    notify-send "Error" "Device with name '$TARGET_NAME' is not paired."
    exit 1
fi

# Check if the device is connected
CONNECTED=$(bluetoothctl info "$TARGET_MAC" | grep "Connected: yes")

if [[ -z "$CONNECTED" ]]; then
    # Try to connect to the device
    if ! bluetoothctl connect "$TARGET_MAC"; then
        notify-send "Error" "Failed to initiate connection to $TARGET_NAME."
        exit 1
    fi

    # Set the timeout for 10 seconds
    TIMEOUT=10
    START_TIME=$(date +%s) # Get the current time in seconds

    # Loop to check if the device is connected
    while true; do
        # Check if the device is connected
        CONNECTED=$(bluetoothctl info "$TARGET_MAC" | grep "Connected: yes")

        # If the device is connected, break the loop
        if [[ -n "$CONNECTED" ]]; then
            notify-send "Connected to $TARGET_NAME"
            break
        fi

        # Calculate elapsed time
        ELAPSED_TIME=$(($(date +%s) - START_TIME))

        # If timeout (10 seconds) has passed, exit the loop
        if [[ $ELAPSED_TIME -ge $TIMEOUT ]]; then
            notify-send "Error" "Failed to connect to $TARGET_NAME within $TIMEOUT seconds."
            break
        fi

        sleep 1
    done
else
    # Disconnect the device explicitly
    bluetoothctl disconnect "$TARGET_MAC"
    notify-send "$TARGET_NAME disconnected."
fi
