#!/bin/bash


## Colors

readonly RED=[31m
readonly GREEN=[32m
readonly YELLO=[33m
readonly BLUE=[34m
readonly LIGHT_RED=[91m
readonly LIGHT_GREEN=[92m
readonly LIGHT_CYAN=[96m
readonly NO_COLOR=[0m


message() {
    local COLOR="$1"
    local MESSAGE="$2"
    echo -e "\e$COLOR""$MESSAGE""\e$NO_COLOR"
}


notification() {
    local MESSAGE="$1"
    message "$LIGHT_CYAN" "==> $MESSAGE"
}


warning() {
    local MESSAGE="$1"
    message "$YELLO" "==> $MESSAGE"
}

success() {
    local MESSAGE="$1"
    message "$BLUE" "==> $MESSAGE"
}

error() {
    local MESSAGE="$1"
    message "$LIGHT_RED" "==> $MESSAGE"
}
