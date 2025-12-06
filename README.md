# Elixir Phoenix CMS

A modern Content Management System built with Phoenix Framework and Phoenix LiveView.

## Prerequisites

- Erlang/OTP 28+
- Elixir 1.19.4+
- PostgreSQL 14+ (or your preferred database)
- Node.js 18+ (for asset compilation)

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Chacha-A-Chacha/Elixir_Phoenix-CMS.git
cd Elixir_Phoenix-CMS
```

### 2. Environment Setup

Copy the example environment file and configure your local settings:

```bash
cp .env.example .env
```

Edit `.env` with your local configuration:

```env
# Database Configuration
DATABASE_URL=ecto://postgres:postgres@localhost/cms_dev
DATABASE_HOST=localhost
DATABASE_PORT=5432
DATABASE_USER=postgres
DATABASE_PASSWORD=postgres
DATABASE_NAME=cms_dev

# Phoenix Configuration
SECRET_KEY_BASE=your-secret-key-base-here-change-this-in-production
PHX_HOST=localhost
PHX_PORT=4000

# Environment
MIX_ENV=dev
```

**Generate a secret key base:**

```bash
mix phx.gen.secret
```

Copy the output and update `SECRET_KEY_BASE` in your `.env` file.

### 3. Install Dependencies

**Note:** Use PowerShell or CMD on Windows, not Git Bash (due to Erlang terminal compatibility issues).

```bash
mix deps.get
```

### 4. Setup Database

Create and migrate your database:

```bash
mix ecto.create
mix ecto.migrate
```

### 5. Install Frontend Assets

```bash
cd assets && npm install && cd ..
```

Or use the setup alias:

```bash
mix setup
```

### 6. Start the Server

Start the Phoenix server:

```bash
mix phx.server
```

Or start it inside IEx (Interactive Elixir):

```bash
iex -S mix phx.server
```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Environment Variables

This project uses [Dotenvy](https://hexdocs.pm/dotenvy) for environment variable management.

### Available Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `DATABASE_URL` | Full database connection URL | `ecto://postgres:postgres@localhost/cms_dev` |
| `DATABASE_HOST` | Database host | `localhost` |
| `DATABASE_PORT` | Database port | `5432` |
| `DATABASE_USER` | Database username | `postgres` |
| `DATABASE_PASSWORD` | Database password | `postgres` |
| `DATABASE_NAME` | Database name | `cms_dev` |
| `SECRET_KEY_BASE` | Phoenix secret key base | Generated value |
| `PHX_HOST` | Phoenix host | `localhost` |
| `PHX_PORT` | Phoenix port | `4000` |
| `MIX_ENV` | Mix environment | `dev` |

### Loading Environment Variables

Environment variables are automatically loaded from `.env` file in `config/config.exs`:

```elixir
import Dotenvy
source([".env"])
```

## Available Mix Tasks

```bash
# Setup project (install deps, create DB, run migrations)
mix setup

# Run tests
mix test

# Run tests with coverage
mix test --cover

# Format code
mix format

# Run pre-commit checks
mix precommit

# Database tasks
mix ecto.create       # Create the database
mix ecto.migrate      # Run migrations
mix ecto.rollback     # Rollback migrations
mix ecto.reset        # Drop, create, and migrate database

# Asset tasks
mix assets.setup      # Install asset dependencies
mix assets.build      # Build assets for development
mix assets.deploy     # Build and minify assets for production
```

## Project Structure

```
├── assets/              # Frontend assets (CSS, JavaScript)
├── config/              # Configuration files
│   ├── config.exs      # General configuration
│   ├── dev.exs         # Development configuration
│   ├── prod.exs        # Production configuration
│   ├── runtime.exs     # Runtime configuration
│   └── test.exs        # Test configuration
├── lib/
│   ├── cms/            # Business logic (contexts, schemas)
│   ├── cms_web/        # Web layer (controllers, views, LiveViews)
│   │   ├── components/ # Reusable components
│   │   ├── controllers/# Controllers
│   │   ├── live/       # LiveView modules
│   │   └── router.ex   # Routes definition
│   └── cms_web.ex      # Web module definition
├── priv/
│   ├── repo/           # Database migrations and seeds
│   └── static/         # Static files
├── test/               # Test files
├── .env.example        # Example environment variables
├── mix.exs             # Project dependencies
└── README.md           # This file
```

## Features (Planned)

- [ ] User Authentication & Authorization
- [ ] Content Management (Posts, Pages)
- [ ] Media Library
- [ ] Rich Text Editor
- [ ] Admin Dashboard
- [ ] SEO Management
- [ ] Multi-language Support
- [ ] Custom Fields
- [ ] Revision History
- [ ] Role-based Access Control

## Development

### Code Formatting

This project uses Elixir's built-in formatter. Format your code before committing:

```bash
mix format
```

### Running Tests

```bash
mix test
```

### Live Reload

Phoenix includes live reload functionality. When you save changes to files, the browser will automatically refresh.

## Production Deployment

Ready to run in production? Please check the [Phoenix deployment guides](https://hexdocs.pm/phoenix/deployment.html).

### Production Environment Variables

Make sure to set these environment variables in production:

- `DATABASE_URL` - Your production database URL
- `SECRET_KEY_BASE` - Generate with `mix phx.gen.secret`
- `PHX_HOST` - Your production domain
- `PHX_SERVER=true` - To start the server

## Learn More

### Phoenix Framework

* Official website: https://www.phoenixframework.org/
* Guides: https://hexdocs.pm/phoenix/overview.html
* Docs: https://hexdocs.pm/phoenix
* Forum: https://elixirforum.com/c/phoenix-forum
* Source: https://github.com/phoenixframework/phoenix

### Phoenix LiveView

* Docs: https://hexdocs.pm/phoenix_live_view
* Source: https://github.com/phoenixframework/phoenix_live_view

### Ecto (Database)

* Docs: https://hexdocs.pm/ecto
* Source: https://github.com/elixir-ecto/ecto

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

See [LICENSE](LICENSE) file for details.

## Support

For issues and questions, please open an issue on GitHub.