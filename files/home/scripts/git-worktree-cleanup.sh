#!/usr/bin/bash

# 1. Update remote tracking and prune deleted branches
git fetch --prune

# 2. Loop and remove worktrees that no longer have a remote tracking branch
git worktree list --porcelain | while read -r line; do
    if [[ $line =~ ^worktree[[:space:]](.+) ]]; then
        wt_path="${BASH_REMATCH[1]}"
    elif [[ $line =~ ^branch[[:space:]]refs/heads/(.+) ]]; then
        branch="${BASH_REMATCH[1]}"
        
        # Check if the branch still exists on the remote (e.g., origin)
        if ! git rev-parse --verify "refs/remotes/origin/$branch" >/dev/null 2>&1; then
            echo "Removing stale worktree at: $wt_path (Branch '$branch' is gone upstream)"
            git worktree remove "$wt_path"
        fi
    fi
done

