# Architecture notes

Ownership and metadata are the source of truth, while Transfer events provide the event stream for external indexers. The contract is intentionally small to make the lifecycle easy to inspect.
