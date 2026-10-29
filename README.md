# NFT Foundry

Minimal ERC-721-style collectible contract showing ownership, approvals, and metadata URI storage.

Use a standard audited implementation such as OpenZeppelin for real deployments.

## Features

The contract assigns sequential token IDs, stores a metadata URI per token, exposes ownership, and supports owner approvals for transfers. The emitted `Transfer` event gives an indexer enough information to reconstruct ownership history.

## Production roadmap

Add interface support, safe recipient checks, operator approvals, burn semantics, URI update policy, royalty policy, and OpenZeppelin-based tests. Metadata hosting and content-addressed storage also need an explicit availability strategy.
