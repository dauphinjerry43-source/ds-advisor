import time
import requests
import yfinance as yf

# ---- CONFIGURATION TELEGRAM DU BOT DS ADVISOR ----
TELEGRAM_BOT_TOKEN = "8610787625:AAGTOEfANE5QUjzSwlvBpgOj4pD4jpJaHjU"
TELEGRAM_CHAT_ID = "7911853751"

# ---- CONFIGURATION DE LA STRATÉGIE GOLD ----
SYMBOL = "GC=F"      # Symbole de l'Or (Gold)
TIMEFRAME = "5m"     # Unité de temps : Scalping 5 Minutes
CANDLES_COUNT = 20   # Analyse de la structure SMC sur 20 bougies

def send_telegram_alert(message):
    """Envoie une notification lisible sur votre Telegram personnel."""
    url = f"
