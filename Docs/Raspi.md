# Raspberry pi Init Setting 
ISO Downloader link

# Basic Laguage Setting

# Keyboard Setting

# FireWall Setting
ファイアウォールインストール  
```
sudo apt install ufw
```
ファイアウォールの有効化  
```
sudo ufw enable
```
ファイルウォールの無効化  
```
sudo ufw disable
```
ファイアウォールのステータス確認
```
sudo ufw status
```
ポート接続許可
```
sudo ufw allow [ port number ]
```
local only
```
sudo ufw from 192.168.XXX.XXX/24 to any port [ port number ]
```
接続許可ポートの削除
```
sudo ufw delete allow [ port number ]
```
ポート番号の接続を拒否
```
sudo ufw deny [ port number ]
```
接続拒否ポートの削除
```
sudo ufw delete deny [ port number ]
```

# Network Setting [ Local ]

(DNSサーバーインストール)  
bind9のインストール
```
sudo apt install -y bind9
```
DNSサーバー設定  
```
vim /etc/bind/named.conf.local
```



# Network Setting [ Global ]
