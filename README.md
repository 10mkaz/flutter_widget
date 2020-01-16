# flutter_widget
Flutter widget test

# 依存関係
pubspec.yaml
dependencies:
# Flutter Toast
  fluttertoast: ^3.1.3


# Proxy
export http_proxy=http://<user>:<pass>@<ipaddress>:8080
export https_proxy=http://<user>:<pass>@<ipaddress>:8080

# Get Package
flutter pub get
flutter pub upgrade


# Git 設定
git config -l
    設定
git config core.autocrlf
git config --global core.autocrlf <true/input/false>
            checkout    commit
    true    LF -> CRLF  CRLF -> LF
    input   変換しない  CRLF -> LF
    false   変換しない  変換しない

# Git 取消
git reset HEAD <filename>
    addの取消

# Git diff
git diff
    add前
git diff --cached
    add後
git diff HEAD^
    commit後
git diff リモート名/ブランチ名..HEAD
    push前
git diff HEAD..リモート名/ブランチ名
    pull前

