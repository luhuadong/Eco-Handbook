#!/bin/bash

VERSION=1.0.0
AUTHOR=luhuadong
BUILD_DIR=build/html
PACKAGE=docs.zip

RemoveExpiredFiles() {
    if [ -d ${BUILD_DIR} ]; then
        echo "Delete build/html ..."
        rm -r ${BUILD_DIR}/*
    fi
}

BuildHtml() {
    make html
}

RunServer() {
    sphinx-autobuild source ${BUILD_DIR}
}

PackageHtml() {
    echo "Package all html ..."
    zip -q -r ${PACKAGE} ${BUILD_DIR}
    echo "See -> ${PACKAGE}"
}

if [ -z $1 ] || [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    echo "Usage: $0 [options]"
    echo ""
    echo "OPTIONS"
    echo "  -b, --build        Build html from rst sources."
    echo "  -p, --package      Package html in a tar ball."
    echo "  -s, --server       Build html and run a local server."
    echo "  -d, --delete       Delete all html files."
    echo "  -a, --all          Rebuild and upload all html files"
    echo "  -h, --help         Display this help and exit"
    echo "  -v, --version      Output version information and exit"
    echo ""
    exit 0
elif [ "$1" == "-v" ] || [ "$1" == "--version" ]; then
    echo "Script Version: ${VERSION}"
    echo "Author: ${AUTHOR}"
    exit 0
elif [ "$1" == "-b" ] || [ "$1" == "--build" ]; then
    RemoveExpiredFiles
    BuildHtml
elif [ "$1" == "-p" ] || [ "$1" == "--package" ]; then
    RemoveExpiredFiles
    BuildHtml
    PackageHtml
elif [ "$1" == "-s" ] || [ "$1" == "--server" ]; then
    RemoveExpiredFiles
    BuildHtml
    RunServer
elif [ "$1" == "-d" ] || [ "$1" == "--delete" ]; then
    RemoveExpiredFiles
elif [ "$1" == "-a" ] || [ "$1" == "--all" ]; then
    RemoveExpiredFiles
    BuildHtml
    PackageHtml
    scp ${PACKAGE} zero:/tmp/
fi

echo "Done!"
exit 0