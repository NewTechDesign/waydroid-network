# Waydroid Network Setup Instructions

## 1. Clone the repository

```bash
git clone https://github.com/NewTechDesign/waydroid-network.git
cd waydroid-network
```

## 2. Make the script executable

```bash
chmod +x start.sh
```

## 3. Run the script

```bash
sudo ./start.sh
```

## 4. Restart Waydroid

After applying the rules, restart Waydroid:

```bash
sudo waydroid container stop
waydroid
```

## 5. Test connectivity

Inside Waydroid, check if internet is working:

```bash
waydroid shell ping -c 4 google.com
```

## All in One

```bash
git clone https://github.com/NewTechDesign/waydroid-network.git && cd waydroid-network && chmod +x start.sh && sudo ./start.sh
```
