# GniyesLabs Platform

> Multi-tenant SaaS platform for association management with modular architecture

## Overview

GniyesLabs is a comprehensive, modular platform designed to empower associations with state-of-the-art membership and event management capabilities. Built with scalability, security, and extensibility at its core.

### First Customer
**AAPI (American Association of Physicians of Indian Origin)**
- 17,000 members
- Target Launch: June 2026
- MVP Deadline: January 30, 2026

## Architecture

### Tech Stack

**Backend:**
- NestJS (TypeScript)
- PostgreSQL 15+ (Multi-schema design)
- Prisma ORM
- Redis 7+
- BullMQ (Job queuing)
- JWT Authentication

**Frontend:**
- React 18
- Vite
- TypeScript
- Tailwind CSS
- shadcn/ui
- Zustand (State management)
- React Router v6

**Infrastructure:**
- Docker & Docker Compose
- GitHub Actions (CI/CD)
- Railway (Staging/Production)
- Cloudflare R2 / AWS S3 (File storage)

### Modules

1. **IMemberGenie** - Comprehensive membership management
2. **IEventGenie** - Event management and registration
3. *Future modules planned*

## Project Structure

```
gniyeslabs-platform/
├── apps/
│   ├── backend/          # NestJS API server
│   └── frontend/         # React web application
├── packages/
│   ├── shared-types/     # Shared TypeScript types
│   └── ui-components/    # Shared React components
├── docs/
│   ├── Master_Plan.md
│   ├── Platform_Vision_Document.md
│   └── Stakeholder_Overview.md
├── scripts/              # Utility scripts
├── docker-compose.yml
└── README.md
```

## Getting Started

### Prerequisites

- Node.js 20+
- Docker & Docker Compose
- PostgreSQL 15+
- Redis 7+

### Installation

```bash
# Clone the repository
git clone https://github.com/techsupport-gniyes/gniyeslabs-platform.git
cd gniyeslabs-platform

# Install dependencies
npm install

# Set up environment variables
cp .env.example .env

# Start infrastructure
docker-compose up -d

# Run database migrations
npm run db:migrate

# Start development servers
npm run dev
```

## Development Timeline

- **Phase 1 (Weeks 1-4)**: Foundation - Multi-tenancy, Auth, Billing
- **Phase 2 (Weeks 5-11)**: IMemberGenie MVP - Member management, AI features
- **Phase 3 (Weeks 12-16)**: IEventGenie MVP - Event management
- **Phase 4 (Weeks 17-20)**: Advanced Features & Testing
- **Phase 5 (Weeks 21-28)**: AAPI Migration & Launch Prep
- **Phase 6 (Weeks 29-48)**: Post-Launch & Optimization

See [Master_Plan.md](docs/Master_Plan.md) for detailed timeline.

## Key Features

### Multi-Tenancy
- Logical separation with tenant_id
- Row-level security
- Custom domains support
- Schema-based isolation

### Authentication & Authorization
- JWT with refresh tokens
- Role-Based Access Control (RBAC)
- 4 roles: Super Admin, Tenant Admin, Module Admin, Member

### AI Integration
- OpenAI GPT-4 Turbo for form generation
- Anthropic Claude 3.5 for admin assistance
- Quota management (50 generations/month)

### Payment Processing
- Stripe integration
- PCI-DSS SAQ-A compliant
- Member-based pricing tiers
- Module-based billing

## Documentation

- [Master Plan](docs/Master_Plan.md) - Complete development roadmap
- [Platform Vision](docs/Platform_Vision_Document.md) - Technical specification
- [Stakeholder Overview](docs/Stakeholder_Overview.md) - Business overview

## License

MIT License - See [LICENSE](LICENSE) for details

## Contact

**Developer:** GniyesAdmin
**GitHub:** [@techsupport-gniyes](https://github.com/techsupport-gniyes)

---

Built with Claude Code + 32 specialized AI development plugins
