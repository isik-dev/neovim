# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a minimal Neovim configuration being built incrementally from scratch. The philosophy is to add features only when genuinely needed, ensuring complete understanding of every line.

## Architecture

- `init.lua` - Main configuration entry point with core vim options

## Configuration Philosophy

When modifying this configuration:

1. **Prefer built-in Neovim features over plugins** when possible
2. **Keep configurations minimal** - only add what's necessary for a specific feature
3. **Explain every line** - each addition should be understood and intentional
4. **Ask clarifying questions** before suggesting solutions to understand exact requirements
5. **Present trade-offs** between options (built-in vs plugin, simple vs feature-rich)

## Working Style

Let the user write the code - act as a guide and reviewer rather than writing code directly. Explain what needs to be done, point to relevant documentation, and review the user's implementation. This ensures the user understands every line they add.

## Current State

The config is in early stages with only basic options set:
- Transparent background
- Line numbers (absolute + relative)
- System clipboard integration

