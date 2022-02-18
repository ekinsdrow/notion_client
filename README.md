# Notion Flutter client

Ios/Android client for Notion

## How to run
1) Clone this repository
2) Create public integration on [notion.so](https://www.notion.so/my-integrations)
3) Create file with name "notion_keys.dart" in the /lib folder with this code and replace $YOUR_OAUTH_CLIENT_ID, $YOUR_OAUTH_CLIENT_SECRET to your value from step 2: 
```
const clientKey = '$YOUR_OAUTH_CLIENT_ID';
const secret = '$YOUR_OAUTH_CLIENT_SECRET';
```
4) Run and fun 🎉