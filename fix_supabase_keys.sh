#!/bin/bash

# Fix Supabase keys in Hedera repo
echo "🔐 Fixing hardcoded Supabase keys in Hedera repo..."

OLD_ANON="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5jamJ3emlibnFyYnJ2aWNkbWVjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTA2ODAxNTksImV4cCI6MjA2NjI1NjE1OX0.R7rx4jOPt9oOafcyJr3x-nEvGk5-e4DP7MbfCVOCHHI"
NEW_ANON="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5jamJ3emlibnFyYnJ2aWNkbWVjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjE0NzMzMDAsImV4cCI6MjA3NzA0OTMwMH0.OBxPLTZYpm6J59HFcn6VvXHlDt3r_HXMQEFCYKNR110"

OLD_SERVICE="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5jamJ3emlibnFyYnJ2aWNkbWVjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1MDY4MDE1OSwiZXhwIjoyMDY2MjU2MTU5fQ.OimR1FKKf2kcQ1c0WO7MvuuB85wRMV6vhbH5DnC8G8E"
NEW_SERVICE="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5jamJ3emlibnFyYnJ2aWNkbWVjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2MTQ3MzMwMCwiZXhwIjoyMDc3MDQ5MzAwfQ.5LiZQFdXgyMnM_HDVW5ZLTGuhF_9xOAbXEJ6yeJ_yTk"

# List of files to update (excluding backup files)
FILES=(
  "./comprehensive-wallet-agents.mjs"
  "./src/lib/supabase.js"
  "./investigate-agent-types.mjs"
  "./.env.local"
  "./simple_filter_analysis.cjs"
  "./database-fee-test.html"
  "./comprehensive_filter_mapping.cjs"
  "./agents-by-deployer.mjs"
  "./test-direct-db.js"
  "./test-supabase-direct.js"
  "./docs/database/DATABASE_FIX_COMPLETE.md"
  "./list-agents.mjs"
  "./database-connection-test.html"
  "./query-agent-cards.mjs"
  "./analyze_filter_fields.cjs"
  "./test-agents-browser.html"
  "./list-all-payment-terminals.mjs"
  "./list-payment-terminals.mjs"
  "./database-test.mjs"
  "./agentsphere-full-web-man-US/check_revolut_agents.mjs"
  "./query-all-agents.mjs"
  "./query-agents-supabase.mjs"
  "./test-app-query.mjs"
  "./agentsphere-backend/check_revolut_agents.mjs"
)

# Replace old keys with new ones
for file in "${FILES[@]}"; do
  if [ -f "$file" ]; then
    echo "Updating: $file"
    sed -i "s|$OLD_ANON|$NEW_ANON|g" "$file"
    sed -i "s|$OLD_SERVICE|$NEW_SERVICE|g" "$file"
  fi
done

echo "✅ Key replacement complete in Hedera repo!"