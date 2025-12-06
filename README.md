# Elixir Phoenix CMS

A Content Management System built with Phoenix Framework and Phoenix LiveView.

## Setup

**Note:** Use PowerShell or CMD on Windows, not Git Bash (Erlang has terminal compatibility issues with Git Bash).

1. Copy environment variables:
   ```
   cp .env.example .env
   ```

2. Install and compile dependencies:
   ```
   mix deps.get
   mix deps.compile
   ```

3. Create and migrate database:
   ```
   mix ecto.setup
   ```

4. Start server:
   ```
   mix phx.server
   ```

Visit `localhost:4000` in your browser.

## Environment Variables

This project uses Dotenvy for environment variable management. See `.env.example` for available configuration options.