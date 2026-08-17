# Xray VLESS+WS Proxy (Replit)

VLESS+WebSocket proxy running on Replit free tier using Xray-core.

- Protocol: VLESS + WebSocket (WS) over TLS (Replit terminates TLS)
- Port: 3000 (Replit maps it to https://<app>.replit.app)
- Path: /hk-cboz7qx16y
- UUID: 57f951fb-757e-4ace-8fe4-4cc9fd4e49cf

Client config (v2rayN / Hiddify):
- Address: <your-app>.replit.app
- Port: 443
- UUID: 57f951fb-757e-4ace-8fe4-4cc9fd4e49cf
- Network: ws, Path: /hk-cboz7qx16y
- TLS: on, SNI: <your-app>.replit.app

## How to deploy on Replit

1. Create a Replit account
2. Create a Repl: "Import from GitHub" → this repo
3. Click Run

## Notes

- Replit free tier sleeps the app after inactivity; first request after sleep takes a few seconds to wake up.
- Change UUID and path in config.json for your own use.
