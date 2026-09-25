#!/bin/bash
echo "🚀 Hermes Quickstart Setup"
echo "=========================="
echo ""

# Check if logged in to provider
PROVIDER="nous"
STATUS=$(hermes auth status $PROVIDER 2>&1)
if echo "$STATUS" | grep -qi "active\|authenticated\|logged\|valid"; then
    echo "✅ Sudah login ke Hermes ($PROVIDER)!"
else
    echo "❌ Belum login. Jalankan:"
    echo ""
    echo "   hermes auth add"
    echo ""
    read -p "Tekan Enter setelah selesai login..."
fi

# Show status
echo ""
echo "📋 Status:"
hermes auth status $PROVIDER 2>&1
hermes model 2>&1 || true
echo ""
echo "✅ Setup selesai! Mulai pakai Hermes."
