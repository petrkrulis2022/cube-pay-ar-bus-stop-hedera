# Cube Pay AR Bus Stop Hedera - Monorepo

This is a dedicated monorepo for the **Hedera Bus Stop Agent** hackathon submission. It combines the AR Viewer frontend with the AgentSphere backend in one repository.

## 🏗️ Repository Structure

```
cube-pay-ar-bus-stop-hedera/
├── src/                          # AR Viewer Frontend (React + Vite)
│   ├── components/               # React components (AR, payment, wallet)
│   ├── services/                 # Frontend services (payment, wallet)
│   └── ...
├── agentsphere-backend/          # AgentSphere Backend
│   ├── server.js                 # Express backend server
│   ├── src/                      # Backend components and services
│   ├── supabase/                 # Database migrations
│   └── ...
├── eshop-sparkle-assets/         # E-shop demo
├── onofframp-cube-paygate/       # Crypto onramp/offramp
└── ...
```

## 🎯 Project Purpose

**Bus Stop Agent Demo for Hedera Hackathon**

This project demonstrates:
- 🚌 **Bus Stop Agent** - Provides transit information and recommendations
- ✈️ **Travel Agent** - Books flights and provides travel services  
- 💬 **A2A Messaging** - Agent-to-Agent communication using Hedera
- 💰 **Multi-Agent Payments** - Dynamic fee splitting between multiple agents
- 🌐 **Multi-Chain Support** - EVM, Solana, and **Hedera** wallets

## 🚀 Getting Started

### Prerequisites
- Node.js 18+
- npm or yarn
- Supabase account
- Hedera testnet account

### Installation

1. **Install Frontend Dependencies**
```bash
npm install
```

2. **Install Backend Dependencies**
```bash
cd agentsphere-backend
npm install
cd ..
```

3. **Configure Environment Variables**

Create `.env` in root for frontend:
```env
VITE_SUPABASE_URL=your_supabase_url
VITE_SUPABASE_ANON_KEY=your_supabase_key
```

Create `.env` in `agentsphere-backend/` for backend:
```env
SUPABASE_URL=your_supabase_url
SUPABASE_SERVICE_ROLE_KEY=your_service_role_key
HEDERA_ACCOUNT_ID=your_hedera_account
HEDERA_PRIVATE_KEY=your_hedera_private_key
```

### Running the Application

**Frontend (AR Viewer)**
```bash
npm run dev
# Runs on http://localhost:5173
```

**Backend (AgentSphere)**
```bash
cd agentsphere-backend
npm run dev
# Backend server runs on configured port
```

## 🎨 Key Features

### Bus Stop Agent Flow
1. User scans AR marker at bus stop
2. Bus Stop Agent appears in AR
3. User asks about transportation to airport
4. Bus Agent communicates with Travel Agent (A2A)
5. Combined offer: Bus ticket + Flight
6. Dynamic payment split between agents

### Payment Options
- 💳 **Revolut Virtual Card** - Dynamic fee splitting
- 🔗 **Crypto QR Codes** - Blockchain payments
- 🤖 **Autonomous Payment** - Agent handles payment automatically

### Supported Networks
- **EVM**: Ethereum, Polygon, Base Sepolia, Morph, Etherlink
- **Solana**: Devnet/Mainnet
- **Hedera**: Testnet/Mainnet (NEW!)

## 🔧 Development

### Branch Strategy
- `master` - Main development branch
- Features developed directly on master
- Source: `revolut-qr-payments-sim-dynamimic-online-payments` (dynamic fees)

### Tech Stack

**Frontend:**
- React + Vite
- Three.js (@react-three/fiber) for AR
- Tailwind CSS
- Wagmi + RainbowKit (EVM wallets)
- Solana Wallet Adapter
- Hedera Wallet Connect (planned)

**Backend:**
- Express.js
- Supabase (PostgreSQL)
- Hedera Agent Kit (planned)
- Payment integrations (Revolut, crypto)

## 📦 Deployment

### Frontend
- Deploy to Netlify/Vercel
- Build: `npm run build`
- Output: `dist/`

### Backend
- Deploy to Railway/Render/Fly.io
- Ensure Hedera environment variables are set
- Database migrations run automatically

## 🌟 Hedera Integration

### Agent Deployment
Agents will be deployed on AgentSphere backend with:
- Hedera Agent Kit installed
- Individual Hedera wallet addresses
- A2A messaging endpoints configured

### User Interaction
- User connects Hedera wallet in AR Viewer
- AR Viewer communicates with deployed agents via HTTP
- Agents handle Hedera transactions on backend
- Frontend displays payment confirmation

## 📚 Documentation

See individual documentation files:
- `AR_VIEWER_*.md` - AR Viewer specific docs
- `REVOLUT_*.md` - Revolut payment integration
- `HEDERA_*.md` - Hedera integration docs
- `PAYMENT_*.md` - Payment system documentation

## 🤝 Contributing

This is a hackathon submission repository. For questions:
- GitHub: [@petrkrulis2022](https://github.com/petrkrulis2022)

## 📄 License

[Your License Here]

---

**Built for Hedera Hackathon 2025** 🚀
