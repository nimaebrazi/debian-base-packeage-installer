#!/bin/bash


## Foreground Colors
readonly NO_COLOR=[0m
readonly FG_RED=[31m
readonly FG_GREEN=[32m
readonly FG_YELLOW=[33m
readonly FG_BLUE=[34m
readonly FG_MAGENTA=[35m
readonly FG_CYAN=[36m
readonly FG_LIGHT_RED=[91m
readonly FG_LIGHT_GREEN=[92m
readonly FG_LIGHT_YELLO=[93m
readonly FG_LIGHT_BLUE=[94m
readonly FG_LIGHT_CYAN=[96m


## Background Colors
readonly BG_RED=[41m
readonly BG_GREEN=[42m
readonly BG_YELLOW=[43m
readonly BG_BLUE=[44m
readonly BG_MAGENTA=[45m
readonly BG_CYAN=[46m
readonly BG_DARK_GRAY=[100m
readonly BG_LIGHT_RED=[101m
readonly BG_LIGHT_GREEN=[102m
readonly BG_LIGHT_YELLOW=[103m
readonly BG_LIGHT_BLUE=[104m
readonly BG_LIGHT_MAGENTA=[105m
readonly BG_LIGHT_CYAN=[106m

message() {
    local COLOR="$1"
    local MESSAGE="$2"
    echo -e "\e$COLOR""$MESSAGE""\e$NO_COLOR"
}

#use light cyan
notification() {
    local MESSAGE="$1"
    message "$FG_LIGHT_CYAN" "==> $MESSAGE"
}

#use bg dark gray
question() {
    local MESSAGE="$1"
    message "$BG_DARK_GRAY" "==> $MESSAGE"
}

#use yello
warning() {
    local MESSAGE="$1"
    message "$FG_YELLOW" "==> $MESSAGE"
}

#use blue
success() {
    local MESSAGE="$1"
    message "$FG_BLUE" "==> $MESSAGE"
}

#use light red
error() {
    local MESSAGE="$1"
    message "$FG_LIGHT_RED" "==> $MESSAGE"
}
