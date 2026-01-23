# Neovim Rebuild Process

## Philosophy
Build a minimal, custom Neovim configuration from scratch by adding features only when needed. This ensures:
- Complete understanding of every line in the config
- No bloat or unused features
- Configuration perfectly matched to personal workflow
- Easy to debug and maintain

## Process Flow

### Phase 1: Clean Slate
1. Commit and push current config to git (backup)
2. Delete `~/.config/nvim` directory
3. Remove nvim-related dependencies (Mason packages, Packer, etc.)
4. Delete nvim data/state directories:
   - `~/.local/share/nvim`
   - `~/.local/state/nvim`
   - `~/.cache/nvim`
5. Keep Neovim installed (the binary itself)

### Phase 2: Raw Neovim Experience
1. Start using raw Neovim in actual work projects
2. Feel the pain points
3. Identify what's truly needed vs nice-to-have

### Phase 3: Incremental Enhancement
Each time you need a feature:

**User's Role:**
- Describe what you need (e.g., "I want to search files quickly")
- Explain your current pain point
- Share your preferences/constraints

**Assistant's Role:**
- Ask clarifying questions about exact requirements
- Present options (built-in solutions vs plugins)
- Explain trade-offs
- Guide implementation step-by-step
- Explain what each line does

**Add to Config:**
- Add only what's necessary for that feature
- Document why it's needed
- Test immediately
- Commit to git

### Phase 4: Natural Evolution
- Config grows organically based on real needs
- Each addition is intentional and understood
- Regular review to remove unused features

## Guidelines

### For User
- ✅ Use Neovim for real work, not just testing
- ✅ Only add features when you genuinely need them
- ✅ Ask "why" for anything you don't understand
- ✅ Test each addition before moving to the next
- ✅ Commit small, logical changes

### For Assistant
- ✅ Ask clarifying questions before suggesting solutions
- ✅ Explain trade-offs between options
- ✅ Prefer built-in Neovim features over plugins when possible
- ✅ Keep configurations minimal
- ✅ Explain every line of config code
- ✅ Test that features work as expected

## Common Features (Add When Needed)

- [ ] Basic options (line numbers, tabs, etc.)
- [ ] Key mappings
- [ ] Color scheme
- [ ] File navigation/fuzzy finding
- [ ] LSP for specific languages
- [ ] Autocompletion
- [ ] Syntax highlighting
- [ ] Git integration
- [ ] Terminal integration
- [ ] Status line
- [ ] File explorer
- [ ] Split/window management
- [ ] Search and replace
- [ ] Snippets

## Current Status

**Phase:** Ready to begin Phase 1 - Clean Slate

**Next Step:** Delete existing config and nvim data directories
