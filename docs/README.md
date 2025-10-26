# Cube Pay AR Bus Stop Hedera - Documentation Index

Complete documentation for the Hedera Bus Stop Agent demo project.

## 📚 Documentation Structure

### 🌐 [AgentSphere](./agentsphere/)

Backend platform for deploying and managing AI agents on multiple blockchains.

**Key Documents:**

- Deployment & Integration Guides
- Wallet Integration (EVM, Solana, Hedera)
- Database Schema & Alignment
- Non-EVM Wallet Integration

### 🎨 [AR Viewer](./ar-viewer/)

Augmented Reality viewer frontend for interacting with agents.

**Key Documents:**

- AR Cube Payment Implementation
- Fee Display & Validation
- QR Code Integration
- Virtual Card Testing
- Marketplace Features

### 💳 [Payments](./payments/)

Payment processing systems including Revolut, virtual cards, and dynamic fees.

**Key Documents:**

- Revolut Integration (Complete Guide)
- Payment Modal System
- Dynamic Payment Verification
- Payment Terminal Redirect System
- Virtual Card Testing Guide

### 🔗 [Blockchain](./blockchain/)

Multi-chain blockchain integrations and cross-chain payment systems.

**Key Documents:**

- **Hedera Integration** (Primary focus for hackathon)
- CCIP (Chainlink Cross-Chain)
- Polygon Amoy & Solana Devnet
- QR Payment Systems
- USDC Contract Addresses

### 🗄️ [Database](./database/)

Supabase database setup, schemas, and fixes.

**Key Documents:**

- Database Setup & Fixes
- Supabase Configuration

### 🚀 [Deployment](./deployment/)

Deployment guides for various platforms.

**Key Documents:**

- Mobile Deployment
- Netlify Environment Setup

### 💻 [Development](./development/)

Development workflows, reports, and best practices.

**Key Documents:**

- Development Report (October 2025)
- Current Status & Session Summaries
- Multi-Root Workspace Best Practices
- Project & Technical Summaries

### 🧪 [Testing](./testing/)

Testing guides and test data (currently empty - add as needed).

### 📜 [Legacy Docs](./legacy/)

Historical documentation from previous development phases.

---

## 🎯 Quick Start for Hedera Hackathon

### Essential Reading (Start Here):

1. [Hedera Integration Complete](./blockchain/HEDERA_INTEGRATION_COMPLETE.md) - Hedera setup
2. [Dynamic Payment Verification](./payments/DYNAMIC_PAYMENT_VERIFICATION.md) - Multi-agent payments
3. [AgentSphere Deployment Guide](./agentsphere/AGENTSPHERE_DEPLOYMENT_FORM_UPDATES_DB_ALIGNED.md) - Agent deployment
4. [Development Report Oct 2025](./development/DEVELOPMENT_REPORT_OCT_2025.md) - Latest status

### Payment Integration:

- [Revolut Integration Complete](./payments/REVOLUT_FRONTEND_IMPLEMENTATION_SUMMARY.md)
- [Payment Terminal System](./payments/PAYMENT_TERMINAL_REDIRECT_SYSTEM.md)
- [QR Payment System](./blockchain/QR_PAYMENT_SYSTEM_COMPLETE_SUMMARY.md)

### AR Viewer Integration:

- [AR Cube Payment Engine](./ar-viewer/CUBE_PAYMENT_ENGINE_DEVELOPMENT.md)
- [Fee Display & Validation](./ar-viewer/AR_VIEWER_FEE_VALIDATION_GUIDE.md)

---

## 🏗️ Project Architecture

```
User (Hedera Wallet)
    ↓
AR Viewer Frontend (React + Three.js)
    ↓ HTTP API
AgentSphere Backend (Express + Hedera Agent Kit)
    ↓
Deployed Agents (Bus Stop Agent, Travel Agent)
    ↓ A2A Messaging
Hedera Network (Testnet/Mainnet)
```

## 📖 Documentation Categories Explained

### AgentSphere

Platform for deploying autonomous AI agents with blockchain wallets. Handles agent lifecycle, wallet management, and database operations.

### AR Viewer

Frontend application providing augmented reality visualization and interaction with deployed agents.

### Payments

Complete payment processing stack supporting:

- Revolut virtual cards with dynamic fee splitting
- Cryptocurrency QR codes
- Cross-chain payments
- Agent-to-agent payment coordination

### Blockchain

Multi-chain support including:

- **Hedera** (Primary for hackathon)
- EVM chains (Ethereum, Polygon, Base, etc.)
- Solana
- CCIP for cross-chain operations

---

## 🔍 Finding What You Need

### For Backend Development:

→ Start in [AgentSphere](./agentsphere/) and [Database](./database/)

### For Frontend Development:

→ Start in [AR Viewer](./ar-viewer/)

### For Payment Integration:

→ Start in [Payments](./payments/) and [Blockchain](./blockchain/)

### For Hedera Integration:

→ Start in [Blockchain](./blockchain/) focusing on Hedera docs

---

## 📝 Contributing to Documentation

When adding new documentation:

1. Place in appropriate thematic folder
2. Use descriptive filenames with category prefix (e.g., `HEDERA_`, `PAYMENT_`, `AR_`)
3. Update this README index
4. Include date in filename if version-specific

---

**Last Updated:** October 25, 2025  
**Project:** Hedera Bus Stop Agent Demo  
**Repository:** https://github.com/petrkrulis2022/cube-pay-ar-bus-stop-hedera
