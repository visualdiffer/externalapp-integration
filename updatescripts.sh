#!/bin/bash

SCRIPT_DIR="$HOME/Library/Application Scripts/com.visualdiffer/"

mkdir -p "$SCRIPT_DIR"

rsync -av editors "$SCRIPT_DIR"
rsync -av comparators "$SCRIPT_DIR"