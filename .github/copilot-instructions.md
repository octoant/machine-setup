# Git Commit Message Instructions

You must generate commit messages strictly adhering to the Conventional Commits 1.0.0 specification. 

## Strict Structural Rules
- Format: `<type>(<scope>): <description>`
- Max length for the first line: 50 characters.
- Do not end the description line with a period.
- Use the imperative mood, present tense (e.g., "add", not "added" or "adds").
- Separate the header from the body with a blank line (if a body is required).

## Allowed Types
Only use the following allowed types:
- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation-only changes
- `style`: Changes that do not affect the meaning of the code (white-space, formatting, etc.)
- `refactor`: A code change that neither fixes a bug nor adds a feature
- `perf`: A code change that improves performance
- `test`: Adding missing tests or correcting existing tests
- `build`: Changes that affect the build system or external dependencies
- `ci`: Changes to CI configuration files and scripts
- `chore`: Changes to the build process or auxiliary tools and libraries
- `revert`: Reverts a previous commit

## Breaking Changes
- If the change introduces a breaking API change, append a `!` after the type/scope (e.g., `feat(auth)!: break login endpoint`).
- Include `BREAKING CHANGE: <description>` in the footer section.

## Verification Workflow
Review the staged `git diff` outputs closely. Identify the single logical atomic change and write a message reflecting *only* that change. Do not invent details not visible in the diff.
