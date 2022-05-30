#!/bin/sh
 
# Command Line Tools for Xcode
xcode-select --install
 
# HomeBrew
# see https://brew.sh/index_ja.html
if [ ! -x "`which brew`" ]; then
  echo "start install and update brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval “$(/opt/homebrew/bin/brew shellenv)”' >> /Users/raven/.zprofile 
  source ~/.zprofile
  brew update
  brew upgrade
  brew -v
fi
 
# BrewfileをGistから取得する
if [ ! -e "~/Brewfile" ]; then
  curl -fsSL https://gist.githubusercontent.com/raven38/3cf8848dd7af8639f2471c6f1ee51f26/raw > ~/Brewfile
  brew bundle
fi
 
# システム環境設定
echo 'Setup defaults'
 
# http://neos21.hatenablog.com/entry/2019/01/10/080000
# ~/Library ディレクトリを見えるようにする
chflags nohidden ~/Library
# /Volumes ディレクトリを見えるようにする
sudo chflags nohidden /Volumes
# ブート時のサウンドを無効化する
sudo nvram SystemAudioVolume=" "
# 時計アイコンクリック時に OS やホスト名 IP を表示する
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
# ファイルを開くときのアニメーションを無効にする
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
# ツールチップ表示までのタイムラグをなくす
defaults write -g NSInitialToolTipDelay -integer 0
# ダイアログ表示やウィンドウリサイズ速度を高速化する
defaults write -g NSWindowResizeTime 0.1
# 全ての拡張子のファイルを表示する
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# スクロールバーを常時表示する
#defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
# スプリングロード遅延を除去する
#defaults write NSGlobalDomain com.apple.springing.delay -float 0
# ディレクトリのスプリングロードを有効にする
# キーリピートの速度
defaults write NSGlobalDomain com.apple.springing.enabled -bool true#defaults write NSGlobalDomain KeyRepeat -int 2
# キーリピート開始までのタイミング
defaults write NSGlobalDomain InitialKeyRepeat -int 15
# コンソールアプリケーションの画面サイズ変更を高速にする
#defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
# Safari のコンテキストメニューに Web インスペクタを追加する
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
# Bluetooth ヘッドフォン・ヘッドセットの音質を向上させる
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
# クラッシュレポートを無効化する
defaults write com.apple.CrashReporter DialogType -string "none"
# Dashboard を無効化する
# defaults write com.apple.dashboard mcx-disabled -bool true
# USB やネットワークストレージに .DS_Store ファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
# Dock が消す
defaults write com.apple.dock autohide -bool true
# Dock が表示されるまでの待ち時間を無効にする
defaults write com.apple.dock autohide-delay -float 0
# Mission Control を使用不可にする
# defaults write com.apple.dock mcx-expose-disabled -bool true
# Finder のタイトルバーにフルパスを表示する
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
# 名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder _FXSortFoldersFirst -bool true
# フォルダを開くときのアニメーションを無効にする
defaults write com.apple.finder AnimateWindowZoom -bool false
# 不可視ファイルを表示する
# defaults write com.apple.finder AppleShowAllFiles YES
# 検索時にデフォルトでカレントディレクトリを検索する
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# 拡張子変更時の警告を無効化する
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# クイックルックでテキストを選択可能にする
defaults write com.apple.finder QLEnableTextSelection -bool true
# Finder を終了させる項目を追加する
defaults write com.apple.Finder QuitMenuItem -bool true
# パスバーを表示する
defaults write com.apple.finder ShowPathbar -bool true
# ステータスバーを表示する
defaults write com.apple.finder ShowStatusBar -bool true
# タブバーを表示する
defaults write com.apple.finder ShowTabView -bool true
# ゴミ箱を空にする前の警告を無効化する
# defaults write com.apple.finder WarnOnEmptyTrash -bool false
# 未確認のアプリケーションを実行する際のダイアログを無効にする
defaults write com.apple.LaunchServices LSQuarantine -bool false
# ファイル共有を有効にした時、共有先に自分の Mac を表示させる
defaults write com.apple.NetworkBrowser ShowThisComputer -bool true
# ファイルのダウンロード後に自動でファイルを開くのを無効化する
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
# Safari の開発・デバッグメニューを有効にする
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
# Safari の開発・デバッグメニューを有効にする
defaults write com.apple.Safari IncludeDevelopMenu -bool true
# Safari の開発・デバッグメニューを有効にする
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
# アドレスバーに完全な URL を表示する
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
# ステータスバーを表示する
defaults write com.apple.Safari ShowStatusBar -bool true
# 検索クエリを Apple へ送信しない
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
# 検索クエリを Apple へ送信しない
defaults write com.apple.Safari UniversalSearchEnabled -bool false
# Safari の開発・デバッグメニューを有効にする
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true

# Battery
## バッテリーを%表示
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Mouse
## 軌跡の速さ
defaults write -g com.apple.mouse.scaling 3
## スクロールの速さ
defaults write -g com.apple.scrollwheel.scaling 5


# Feedback
## フィードバックを送信しない
defaults write com.apple.appleseed.FeedbackAssistant "Autogather" -bool "false"
## クラッシュレポート無効化
defaults write com.apple.CrashReporter DialogType -string "none"

## 軌跡の速さ
defaults write -g com.apple.trackpad.scaling 12
## スクロールの方向


# Screenshot
# スクリーンキャプチャの影をなくす
defaults write com.apple.screencapture disable-shadow -bool true
## 画像の影を無効化
defaults write com.apple.screencapture "disable-shadow" -bool "true"
## 保存場所
defaults write com.apple.screencapture "location" -string "~/Google Drive/screenshot"
# 撮影時のサムネイル表示
defaults write com.apple.screencapture "show-thumbnail" -bool "false"
## 保存形式
defaults write com.apple.screencapture "type" -string "jpg"
# スクリーンショットの保存形式を PNG にする
# defaults write com.apple.screencapture type -string "png"


# UTF-8 のみを使用する
# defaults write com.apple.terminal StringEncodings -array 4
 
# https://qiita.com/djmonta/items/17531dde1e82d9786816
# Date options: Show the day of the week: on （日付表示設定、曜日を表示）
defaults write com.apple.menuextra.clock 'DateFormat' -string 'EEE H:mm:ss'
 
# https://qiita.com/ryuichi1208/items/5905240f3bfce793b33d
# Spotlight トレイアイコンを非表示
# $ sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search
 
## 本体キーボードのCapsLockキーの動作をControlにリマップ
keyboard_id="$(ioreg -c AppleEmbeddedKeyboard -r | grep -Eiw "VendorID|ProductID" | awk '{ print $4 }' | paste -s -d'-\n' -)-0"
defaults -currentHost write -g com.apple.keyboard.modifiermapping.${keyboard_id} -array-add "
<dict>
  <key>HIDKeyboardModifierMappingDst</key>\
  <integer>30064771300</integer>\
  <key>HIDKeyboardModifierMappingSrc</key>\
  <integer>30064771129</integer>\
</dict>
"

echo "done"
 
echo "Next step is download dotfiles from Github and restore them"
echo "Firefox usercss for tree tab"
