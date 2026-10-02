# Deployment Pre-check

這個 Repository 是我根據實習期間觀察到的大量設備重複部署與人工檢核流程，
延伸建立的個人練習 Prototype。

## 專案目的

將部署前常見的人工環境確認步驟整理為可重複執行的自動化檢核流程，
降低大量設備部署時重複操作與人工遺漏的可能性。

## 預計檢查項目

### 系統資訊
- Windows 版本
- Hostname
- CPU / RAM
- 磁碟空間

### 網路環境
- 網路介面
- IP 設定
- DNS
- 網路連線狀態

### 軟體環境
- 必要目錄是否存在
- 必要軟體是否安裝
- Service 狀態
- 軟體版本

## 結果分類

預計以：

- PASS
- WARN
- FAIL

呈現檢查結果。

## 專案狀態

🚧 Work in Progress

目前先整理檢查流程與需求，後續預計使用 PowerShell 實作。


此 Repository 為個人練習用途
