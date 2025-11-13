# GniyesLabs Platform - Claude Code Context

> Critical context for AI-assisted development of the GniyesLabs multi-tenant SaaS platform

## Project Overview

**Platform:** GniyesLabs - Multi-tenant association management SaaS
**First Customer:** AAPI (17,000 members)
**MVP Deadline:** January 30, 2026 (11 weeks)
**Launch Target:** June 2026

### Tech Stack
- **Backend:** NestJS, TypeScript, Prisma, PostgreSQL 15, Redis 7, BullMQ
- **Frontend:** React 18, Vite, TypeScript, Tailwind CSS, shadcn/ui, Zustand
- **AI:** OpenAI GPT-4 Turbo, Anthropic Claude 3.5 Sonnet
- **Payments:** Stripe
- **Infrastructure:** Docker, GitHub Actions, Railway (staging), AWS (production)

### Database Architecture
- Multi-schema design: `platform`, `imembergenie`, `ieventgenie`
- Row-level security for tenant isolation
- All tables must have `tenantId` for multi-tenancy

## Development Principles

### 1. ALWAYS Use Skills Proactively
The project has 33 Claude Code skills installed (32 domain-specific + 1 workflow skill). **You MUST use them proactively** - don't wait to be asked.

### 2. Security First
- Never commit secrets (.env files are gitignored)
- All user inputs must be validated (class-validator)
- SQL injection prevention (Prisma parameterized queries)
- XSS protection on frontend
- OWASP Top 10 compliance required

### 3. Type Safety
- Strict TypeScript everywhere
- Prisma types for database
- Shared types package for frontend/backend
- No `any` types without explicit justification

### 4. Multi-Tenancy Rules
- **CRITICAL:** Every query must filter by `tenantId`
- Use tenant context middleware on all routes
- Test tenant isolation rigorously
- Row-level security as defense-in-depth

### 5. Testing Strategy
- TDD workflow for critical features
- Unit tests for business logic
- Integration tests for APIs
- E2E tests for user flows

## Superpowers Workflow System (META-SKILL)

**THE MOST IMPORTANT SKILL** - Use this to orchestrate all other skills and development workflows.

### Slash Commands (Use These Extensively!)

**`/superpowers:brainstorm`** - Interactive design refinement
- Use BEFORE starting any complex feature
- Socratic questioning to explore design options
- Helps identify edge cases and requirements
- **Example:** `/superpowers:brainstorm` multi-tenancy middleware design

**`/superpowers:write-plan`** - Detailed implementation planning
- Use AFTER brainstorming, BEFORE coding
- Creates step-by-step implementation plan with quality gates
- Includes verification steps and rollback procedures
- **Example:** `/superpowers:write-plan` JWT authentication with refresh tokens

**`/superpowers:execute-plan`** - Batch execution with verification
- Use to execute the plan created by write-plan
- Automatic quality checks at each step
- Stops on failures for review
- **Example:** `/superpowers:execute-plan` (after write-plan)

### Automatic Skills (Activate Contextually)

**TDD Workflow:**
- RED-GREEN-REFACTOR cycle enforcement
- Async testing patterns (condition-based waiting)
- Anti-pattern detection

**Systematic Debugging:**
- 4-phase root cause process (Observe → Hypothesize → Test → Verify)
- Evidence-based verification before claiming "fixed"
- Defense-in-depth validation

**Collaboration Patterns:**
- Parallel agent coordination
- Code review workflows
- Git worktree management

### When to Use Superpowers

**ALWAYS for complex features:**
1. Run `/superpowers:brainstorm` to explore the problem
2. Run `/superpowers:write-plan` to create detailed plan
3. Review the plan with user if needed
4. Run `/superpowers:execute-plan` to implement with quality gates

**ALWAYS for debugging:**
- Let superpowers guide 4-phase systematic debugging
- Don't guess - follow evidence-based approach

**ALWAYS for TDD:**
- Let superpowers enforce RED-GREEN-REFACTOR discipline
- Write failing test first, no exceptions

## Installed Skills & When to Use Them

### Backend Development Skills

**`backend-development:api-design-principles`**
- Use when: Designing new REST/GraphQL APIs
- Use when: Reviewing API structure
- Use when: Establishing API standards

**`backend-development:architecture-patterns`**
- Use when: Implementing Clean Architecture
- Use when: Setting up DDD patterns
- Use when: Refactoring for maintainability
- **USE NOW:** Multi-tenancy architecture design

**`backend-development:microservices-patterns`**
- Use when: Designing service boundaries
- Use when: Implementing event-driven architecture
- Use when: Building module communication

### JavaScript/TypeScript Skills

**`javascript-typescript:typescript-advanced-types`**
- Use when: Creating complex type utilities
- Use when: Implementing generics
- Use when: Type inference optimization
- **USE NOW:** Setting up shared types

**`javascript-typescript:nodejs-backend-patterns`**
- Use when: Building NestJS services
- Use when: Implementing middleware
- Use when: API design best practices
- **USE NOW:** NestJS module structure

**`javascript-typescript:javascript-testing-patterns`**
- Use when: Writing Jest tests
- Use when: Setting up test infrastructure
- Use when: Implementing TDD workflows

**`javascript-typescript:modern-javascript-patterns`**
- Use when: Refactoring legacy code
- Use when: Using ES6+ features
- Use when: Optimizing async patterns

### Database Skills

**`database-design:postgresql`**
- Use when: Designing schemas
- Use when: Indexing strategies
- Use when: Performance optimization
- **USE NOW:** Optimizing Prisma schema

**`database-migrations:sql-migrations`**
- Use when: Planning zero-downtime migrations
- Use when: Large data migrations
- **USE LATER:** AAPI data migration (17K members)

**`database-migrations:migration-observability`**
- Use when: Monitoring migrations
- Use when: Setting up CDC (Change Data Capture)

### Security Skills

**`security-scanning:sast-configuration`**
- Use when: Setting up security scanning
- Use when: Implementing DevSecOps
- **USE NOW:** Configure SAST tools

**`security-compliance:security-auditor`**
- Use when: Security audits
- Use when: Compliance implementation (PCI-DSS)
- **USE SOON:** Pre-Stripe integration audit

**`backend-api-security:backend-security-coder`**
- Use when: Implementing auth/authz
- Use when: API security code reviews
- **USE NOW:** JWT authentication implementation

### Payment Processing Skills

**`payment-processing:stripe-integration`**
- Use when: Implementing Stripe Checkout
- Use when: Building subscription systems
- **USE IN WEEK 3:** Billing integration

**`payment-processing:pci-compliance`**
- Use when: Ensuring PCI-DSS compliance
- Use when: Securing payment flows
- **USE IN WEEK 3:** Before Stripe goes live

**`payment-processing:billing-automation`**
- Use when: Building subscription billing
- Use when: Dunning management
- **USE IN PHASE 3:** Advanced billing features

### CI/CD & Infrastructure Skills

**`cicd-automation:github-actions-templates`**
- Use when: Creating CI/CD workflows
- Use when: Automating deployments
- **USE NOW:** Enhance GitHub Actions

**`cicd-automation:deployment-pipeline-design`**
- Use when: Multi-stage pipeline design
- Use when: GitOps implementation

**`cloud-infrastructure:cloud-architect`**
- Use when: Planning AWS architecture
- Use when: Cost optimization
- **USE IN PHASE 4:** AWS migration planning

**`cloud-infrastructure:terraform-specialist`**
- Use when: Infrastructure as Code
- Use when: Multi-cloud deployments
- **USE IN PHASE 4:** Production infrastructure

### Testing & Quality Skills

**`unit-testing:test-automator`**
- Use when: Building test infrastructure
- Use when: Implementing test strategies
- **USE NOW:** Setup Jest/testing framework

**`tdd-workflows:tdd-orchestrator`**
- Use when: Implementing TDD practices
- Use when: Red-green-refactor discipline
- **USE THROUGHOUT:** All feature development

**`code-review-ai:code-reviewer`**
- Use when: Reviewing code quality
- Use when: Security/performance checks
- **USE PROACTIVELY:** After every major feature

### LLM/AI Development Skills

**`llm-application-dev:ai-engineer`**
- Use when: Building RAG systems
- Use when: Implementing AI agents
- **USE IN WEEK 9-10:** AI form builder & admin assistant

**`llm-application-dev:prompt-engineer`**
- Use when: Crafting system prompts
- Use when: Optimizing LLM performance
- **USE IN WEEK 9-10:** AI features

### Observability & Performance Skills

**`observability-monitoring:observability-engineer`**
- Use when: Setting up monitoring
- Use when: Implementing SLI/SLO
- **USE IN PHASE 4:** Production monitoring

**`observability-monitoring:performance-engineer`**
- Use when: Performance optimization
- Use when: Load testing
- **USE IN WEEK 11:** Performance testing with 17K members

**`application-performance:performance-engineer`**
- Use when: Optimizing app performance
- Use when: Core Web Vitals optimization
- **USE IN PHASE 4:** Production optimization

### Debugging & Troubleshooting Skills

**`debugging-toolkit:debugger`**
- Use when: Encountering errors
- Use when: Test failures
- **USE ANYTIME:** Issues arise

**`error-debugging:error-detective`**
- Use when: Analyzing logs
- Use when: Investigating production errors
- **USE ANYTIME:** Debugging needed

### Documentation & Code Quality Skills

**`code-documentation:docs-architect`**
- Use when: Creating technical documentation
- Use when: Architecture guides
- **USE AFTER EACH PHASE:** Document what was built

**`code-refactoring:legacy-modernizer`**
- Use when: Refactoring code
- Use when: Reducing technical debt
- **USE AS NEEDED:** Code cleanup

### API Scaffolding Skills

**`api-scaffolding:backend-architect`**
- Use when: Creating new backend services
- Use when: API design
- **USE NOW:** Core API structure

**`api-scaffolding:graphql-architect`**
- Use when: GraphQL schema design (if used)
- Use when: Performance optimization

### Deployment & Incident Response Skills

**`deployment-strategies:deployment-engineer`**
- Use when: Planning deployments
- Use when: Zero-downtime releases
- **USE IN PHASE 4:** Production deployment strategy

**`incident-response:incident-responder`**
- Use when: Production incidents
- Use when: Post-mortem analysis
- **USE AS NEEDED:** Production issues

## MCP Servers

Currently configured MCP servers:
- (None yet - to be added as needed)

**Future MCP servers to consider:**
- Database MCP for PostgreSQL introspection
- Stripe MCP for payment testing
- AWS MCP for cloud operations

## Critical Project Information

### Pricing Tiers (Member-Based)
- Tier 1: 1-500 members = $99/month
- Tier 2: 501-2,000 members = $249/month
- Tier 3: 2,001-5,000 members = $499/month
- Tier 4: 5,001+ members = $799/month
- Modules: +$49/month each (IMemberGenie, IEventGenie)

### User Roles (RBAC)
1. **Super Admin:** Platform-level access
2. **Tenant Admin:** Full tenant access
3. **Module Admin:** Module-specific admin
4. **Member:** Standard member access

### AI Quota Management
- 50 AI generations per module per month
- Form builder & admin assistant
- Reset monthly
- Track usage in `tenant_modules.aiQuotaUsed`

### Module Provisioning Rules
- 3-hour cooldown between activations
- Stripe subscription required
- Automatic schema/data setup
- Deactivation: 30-day grace period

## Development Workflow

### Before Starting Any Feature

1. **Brainstorm with Superpowers:**
   - Run `/superpowers:brainstorm` for complex features
   - Explore design options, edge cases, requirements
   - Get clarity before planning

2. **Create Implementation Plan:**
   - Run `/superpowers:write-plan` to create detailed step-by-step plan
   - Review plan quality gates and verification steps
   - Adjust if needed before execution

3. **Read relevant documentation:**
   - `/docs/Master_Plan.md` - Check timeline
   - `/docs/Platform_Vision_Document.md` - Technical details

4. **Use TodoWrite tool:**
   - Break down feature into tasks (based on plan)
   - Track progress continuously

### During Feature Development

1. **Execute with Superpowers:**
   - Run `/superpowers:execute-plan` to implement with quality gates
   - Superpowers automatically enforces TDD (RED-GREEN-REFACTOR)
   - Stops on failures for review

2. **Use domain-specific skills:**
   - Invoke relevant skills (backend, security, database, etc.)
   - Get expert guidance for specific challenges
   - Examples: `backend-api-security:backend-security-coder` for auth

3. **Security checks:**
   - Run `security-compliance:security-auditor` after implementation
   - Validate all inputs
   - Test tenant isolation

4. **Code review:**
   - Invoke `code-review-ai:code-reviewer` before committing
   - Address all findings

### After Feature Completion

1. **Documentation:**
   - Update relevant docs
   - Add inline comments for complex logic

2. **Testing:**
   - Unit tests passing
   - Integration tests passing
   - Manual testing completed

3. **Git commit:**
   - Descriptive commit message
   - Reference issue/task if applicable
   - Push to GitHub

## Environment Variables

**Never commit these - they're in .env files (gitignored):**

```bash
# Database
DATABASE_URL=postgresql://gniyeslabs:password@localhost:5432/gniyeslabs_db

# JWT
JWT_SECRET=production-secret-here
JWT_REFRESH_SECRET=production-refresh-secret-here

# APIs (User has these)
OPENAI_API_KEY=sk-...
ANTHROPIC_API_KEY=sk-ant-...
STRIPE_SECRET_KEY=sk_test_...
RESEND_API_KEY=re_...

# Redis
REDIS_HOST=localhost
REDIS_PORT=6379
```

## Common Commands

```bash
# Development
npm run dev                    # Start both backend & frontend
npm run dev:backend           # Backend only (port 3000)
npm run dev:frontend          # Frontend only (port 5173)

# Database
npm run db:migrate            # Run Prisma migrations
npm run db:studio             # Open Prisma Studio
npm run db:seed               # Seed database

# Infrastructure
npm run docker:up             # Start PostgreSQL + Redis
npm run docker:down           # Stop containers
npm run docker:logs           # View container logs

# Testing
npm run test                  # Run all tests
npm run lint                  # Lint code
npm run build                 # Build for production
```

## Next Steps (Week 1)

### Immediate Tasks (Use Superpowers + Skills!)

1. **Multi-tenancy Middleware**
   - `/superpowers:brainstorm` multi-tenancy middleware design
   - `/superpowers:write-plan` tenant context implementation
   - `/superpowers:execute-plan` with TDD
   - Skills: `backend-development:architecture-patterns`, `backend-api-security:backend-security-coder`

2. **JWT Authentication**
   - `/superpowers:brainstorm` JWT + refresh token strategy
   - `/superpowers:write-plan` authentication module
   - `/superpowers:execute-plan` with security checks
   - Skills: `backend-api-security:backend-security-coder`, `javascript-typescript:nodejs-backend-patterns`

3. **RBAC Authorization**
   - `/superpowers:brainstorm` 4-role permission system
   - `/superpowers:write-plan` RBAC guards and decorators
   - `/superpowers:execute-plan` with isolation tests
   - Skills: `backend-development:api-design-principles`, `security-compliance:security-auditor`

4. **Test Infrastructure**
   - `/superpowers:write-plan` Jest + testing framework setup
   - Skills: `unit-testing:test-automator`, `tdd-workflows:tdd-orchestrator`

## Emergency Contacts & Resources

- **Master Plan:** `/docs/Master_Plan.md`
- **Technical Spec:** `/docs/Platform_Vision_Document.md`
- **Business Overview:** `/docs/Stakeholder_Overview.md`
- **GitHub Repo:** https://github.com/techsupport-gniyes/gniyeslabs-platform

## Remember

✅ **ALWAYS use Superpowers workflow** - brainstorm → plan → execute
✅ **ALWAYS use skills proactively** - they contain expert knowledge
✅ **ALWAYS use TodoWrite** to track complex tasks
✅ **ALWAYS enforce TDD** - RED-GREEN-REFACTOR (superpowers does this)
✅ **ALWAYS test tenant isolation** - critical for multi-tenancy
✅ **NEVER commit secrets** - use .env files
✅ **ALWAYS validate inputs** - security first
✅ **ALWAYS use TypeScript strictly** - type safety prevents bugs

---

*This context file is automatically loaded by Claude Code and kept in memory throughout the development session.*
