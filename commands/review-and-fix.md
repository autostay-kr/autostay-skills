# Review PR Comments and Fix

Review the current branch's PR comments and improve the code accordingly.

## PR Info

**Current Branch:**
```
$(git branch --show-current)
```

**PR for Current Branch:**
```
$(gh pr view --json number,title,url --jq '"#\(.number) \(.title)\n\(.url)"' 2>/dev/null || echo "No PR found")
```

**Additional Instructions:** $ARGUMENTS

## Tasks

1. **Fetch PR comments** (auto-detected based on current branch):
   ```bash
   # General PR comments
   gh pr view --comments

   # Line-level code review comments
   gh pr view --json number --jq '.number' | xargs -I {} gh api repos/:owner/:repo/pulls/{}/comments
   ```

2. **Analyze review comments**:
   - `[critical]` - Must fix
   - `[warning]` - Should fix
   - `[suggestion]` - Optional improvement
   - `[nitpick]` - Minor opinion

3. **Improve code**:
   - Locate the file/line referenced in each comment
   - Apply improvements
   - Run lint/typecheck

4. **Commit & push**:
   - Include review fix details in the commit message
   - Push to the current branch

## Output Format

After completing fixes, summarize in the following format:

```
## Review Summary

| Comment | Status | Commit |
|---------|--------|--------|
| [critical] Security issue | Fixed | abc1234 |
| [warning] N+1 query | Fixed | abc1234 |
| [suggestion] Variable name | Skipped (intentional design) |
```

## Rules

- `[critical]` comments must be fixed
- If a fix is not possible, explain the reason
- Verify lint/typecheck passes after fixes
- If tests exist, verify they pass
