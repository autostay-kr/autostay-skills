# Git Commit, Push, PR, Review & Fix

Commit changes, push to remote, create a PR, run code review, and apply fixes.

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

### Phase 1: Commit & Create PR

1. **Analyze changes**: Understand the changes based on the diff above
2. **Create commit**:
   - Stage relevant files
   - Follow existing commit message style (feat/fix/refactor/docs etc.)
   - Korean or English (follow existing style)
3. **Push**: Push to remote (set upstream if needed)
4. **Create PR**: Use `gh pr create`
   - Title: Based on commit message
   - Body: Change summary + test plan

### Phase 2: Code Review

5. **Run code review**: After PR creation, invoke the `code-review:code-review` **skill** via the `Skill` tool (e.g., `Skill: code-review:code-review, args: "<PR number>"`)
   - **IMPORTANT**: Use the `Skill` tool to call `code-review:code-review` (fully qualified name), NOT the `Task` tool with `feature-dev:code-reviewer` agent. The `feature-dev:code-reviewer` agent cannot post PR comments (no Bash tool). The `code-review:code-review` skill handles review + `gh pr comment` posting automatically.
   - Review results are posted as PR comments

### Phase 3: Apply Review Fixes

6. **Fix review comments**: Apply review feedback following the `review-and-fix` command logic
   - Fetch PR comments (`gh pr view --comments` + code review comments)
   - `[critical]` must fix, `[warning]` should fix, `[suggestion]` optional
   - Apply code fixes, then verify lint/typecheck
   - Commit with message describing review fixes and push
   - Skip this phase if no review issues found

7. **Print final summary**:
   ```
   ## Summary

   - PR: <PR URL>
   - Review: <N issues found / No issues>
   - Fix: <N fixed / Skipped>

   | Comment | Status | Commit |
   |---------|--------|--------|
   | [severity] description | Fixed / Skipped (reason) | commit hash |
   ```

## Rules

- **Never push directly to main**: Always create a feature branch and PR to main
  - Branch name examples: `feat/vehicle-visit-api`, `fix/login-bug`, `refactor/auth-module`
- Run `bun run lint` before committing to ensure no lint errors
- Never commit sensitive files such as `.env`, `credentials`
- Ask the user whether to use the draft option when creating PR
- If no review issues in Phase 2, skip Phase 3 and print final summary only

## Additional Instructions
$ARGUMENTS
