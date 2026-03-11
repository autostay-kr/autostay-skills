# Git Commit, Push & PR

Commit changes, push to remote, and create a PR.

## Current Git Status

**Branch Info:**
```
Current branch: $(git branch --show-current)
Base branch: main
Remote status: $(git status -sb | head -1)
```

**Changed Files:**
```
$(git status --short)
```

**Staged Changes:**
```
$(git diff --cached --stat 2>/dev/null || echo "(no staged changes)")
```

**Unstaged Changes:**
```
$(git diff --stat 2>/dev/null || echo "(no unstaged changes)")
```

**Recent Commit Messages (for style reference):**
```
$(git log --oneline -5 2>/dev/null)
```

**Branch Commit History (vs main):**
```
$(git log main..HEAD --oneline 2>/dev/null || echo "(no main branch)")
```

## Tasks

1. **Analyze changes**: Understand the changes based on the diff above
2. **Create commit**:
   - Stage relevant files
   - Follow existing commit message style (feat/fix/refactor/docs etc.)
   - Korean or English (follow existing style)
3. **Push**: Push to remote (set upstream if needed)
4. **Create PR**: Use `gh pr create`
   - Title: Based on commit message
   - Body: Change summary + test plan
5. **Print PR URL** when done

## Rules

- **Never push directly to main**: Always create a feature branch and PR to main
  - Branch name examples: `feat/vehicle-visit-api`, `fix/login-bug`, `refactor/auth-module`
- Run `bun run lint` before committing to ensure no lint errors
- Never commit sensitive files such as `.env`, `credentials`
- Ask the user whether to use the draft option when creating PR

## Additional Instructions
$ARGUMENTS
