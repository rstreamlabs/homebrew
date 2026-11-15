# Repository guidance

## Shared conventions

Follow the existing architecture, naming and coding style. Preserve public contracts, authentication, certificate verification and project policy. Keep changes in the component that owns the behavior.

Update user documentation and examples when behavior changes. Run the relevant checks; place regression tests with the owning component. Keep secrets, execution logs, investigation notes and standalone upstream reproductions outside the repository.

## Repository-specific guidance

This tap distributes the CLI; it does not implement it. Preserve the published version, platform archive and checksum relationship in `Formula/rstream.rb`. Run formula checks for packaging changes. Route application behavior changes to the CLI repository.
