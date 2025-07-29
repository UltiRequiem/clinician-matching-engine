# LunaJoy Architecture

## System Overview

LunaJoy is a clinician matching application that helps patients find the right mental health professionals based on their preferences and needs.

## Architecture Diagram

```mermaid
graph TB
    %% Frontend Layer
    subgraph "Frontend (Next.js)"
        UI[User Interface]
        Form[Intake Form]
        Results[Results Page]
        Chosen[Chosen Page]

        UI --> Form
        UI --> Results
        UI --> Chosen
    end

    %% Client Package
    subgraph "Client Package (@lunajoy/engine)"
        Client[Client SDK]
        Types[Type Definitions]
        Client --> Types
    end

    %% Backend Layer
    subgraph "Backend (NestJS)"
        API[API Gateway]
        ME[Matching Engine Service]
        DB[Database Service]
        Config[Config Service]

        API --> ME
        API --> DB
        API --> Config
    end

    %% Database Layer
    subgraph "Database (SQLite + Prisma)"
        Prisma[Prisma ORM]
        SQLite[(SQLite Database)]

        Prisma --> SQLite
    end

    %% External Services
    subgraph "External Services"
        OpenAI[OpenAI GPT-4o-mini]
    end

    %% Data Models
    subgraph "Data Models"
        Patient[Patient Model]
        Clinician[Clinician Model]
        MatchLog[Match Log Model]

        %% Join Tables
        PCN[Patient Clinical Need]
        CCN[Clinician Clinical Need]
        PTS[Patient Time Slot]
        CTS[Clinician Time Slot]
        CS[Clinician State]
        CL[Clinician Language]
        CI[Clinician Insurance]
        CAT[Clinician Appointment Type]
    end

    %% Connections
    Form --> Client
    Results --> Client
    Chosen --> Client

    Client --> API

    ME --> Prisma
    DB --> Prisma

    ME --> OpenAI

    Prisma --> Patient
    Prisma --> Clinician
    Prisma --> MatchLog
    Prisma --> PCN
    Prisma --> CCN
    Prisma --> PTS
    Prisma --> CTS
    Prisma --> CS
    Prisma --> CL
    Prisma --> CI
    Prisma --> CAT

    %% Relationships
    Patient -.->|1:N| PCN
    Patient -.->|1:N| PTS
    Patient -.->|1:N| MatchLog

    Clinician -.->|1:N| CCN
    Clinician -.->|1:N| CTS
    Clinician -.->|1:N| CS
    Clinician -.->|1:N| CL
    Clinician -.->|1:N| CI
    Clinician -.->|1:N| CAT
    Clinician -.->|1:N| MatchLog

    %% Styling
    classDef frontend fill:#e1f5fe
    classDef backend fill:#f3e5f5
    classDef database fill:#e8f5e8
    classDef external fill:#fff3e0
    classDef models fill:#fce4ec

    class UI,Form,Results,Chosen frontend
    class Client,Types frontend
    class API,ME,DB,Config backend
    class Prisma,SQLite database
    class OpenAI external
    class Patient,Clinician,MatchLog,PCN,CCN,PTS,CTS,CS,CL,CI,CAT models
```

## Component Details

### Frontend Components

- **IntakeForm**: Collects patient preferences and requirements
- **Results Page**: Displays ranked clinician matches with swipe functionality
- **Chosen Page**: Confirmation page after selecting a clinician

### Backend Services

- **Matching Engine Service**: Core algorithm for scoring and ranking clinicians
- **Database Service**: Handles data access and filtering
- **Config Service**: Manages application configuration

### Data Flow

1. Patient fills out intake form with preferences
2. Frontend sends data to backend via client SDK
3. Matching engine filters and scores clinicians
4. Results are ranked and returned to frontend
5. Patient can swipe through matches and select preferred clinician
6. AI explanation is generated for top match using OpenAI

### Key Features

- **Real-time Matching**: Instant clinician recommendations
- **AI-Powered Explanations**: GPT-4 generates personalized match explanations
- **Responsive Design**: Mobile-first interface with swipe gestures
- **Type Safety**: Full TypeScript implementation across all layers
- **Scalable Architecture**: Modular design with clear separation of concerns
