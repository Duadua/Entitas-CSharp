#!/usr/bin/env bash
PROJECT="Entitas"
PLUGINS=(changelog dotnet doxygen git github tree utils version)

# changelog => version
CHANGELOG_PATH=CHANGELOG.md
CHANGELOG_CHANGES=CHANGES.md

# dotnet
DOTNET_SOLUTION="${PROJECT}.sln"
DOTNET_TESTS_PROJECT=Tests/Tests/Tests.csproj
DOTNET_TESTS_RUNNER=Tests/Tests/bin/Release/Tests.exe

# doxygen => utils version
DOXYGEN_EXPORT_PATH=docs
DOXYGEN_DOXY_FILES=(bee/docs/html.doxyfile)
DOXYGEN_DOCSET_NAME="${PROJECT}.docset"
DOXYGEN_DOCSET="com.desperatedevs.${PROJECT}.docset"
DOXYGEN_DOCSET_KEY="$(echo "${PROJECT}" | tr "[:upper:]" "[:lower:]")"
DOXYGEN_DOCSET_ICONS=(bee/docs/icon.png bee/docs/icon@2x.png)

# github => version
GITHUB_CHANGES=CHANGES.md
GITHUB_RELEASE_PREFIX="${PROJECT} "
GITHUB_REPO="sschmid/Entitas-CSharp"
GITHUB_ATTACHMENTS_ZIP=("Build/dist/${PROJECT}.zip")
source "${HOME}/.bee/github"

# tree
TREE_IGNORE="bin|obj|Library|Libraries|*Tests|Readme|ProjectSettings|Build|docs|Temp|Examples|*.csproj|*.meta|*.sln|*.userprefs|*.properties|tree.txt"
TREE_PATH=tree.txt

# utils
UTILS_RSYNC_INCLUDE=bee/utils/rsync_include.txt
UTILS_RSYNC_EXCLUDE=bee/utils/rsync_exclude.txt

# version
VERSION_PATH=version.txt

# entitas
source bee/entitas.sh
