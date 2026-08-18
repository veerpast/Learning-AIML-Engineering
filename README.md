# Learning AI/ML Engineering

This repository is my evolving, production-minded workspace for documenting hands-on progress in AI/ML engineering. It is a daily learning record: the code reflects what I am currently studying and building, while planned topics are clearly identified as future work.

## Goal

My goal is to develop the practical engineering skills required to build reliable, end-to-end AI systems—from data processing and model development to backend APIs, evaluation, deployment, monitoring, and user-facing AI applications.

The emphasis is not only on training models, but on learning how to turn them into useful, testable, maintainable systems.

## Current Focus

- Strengthening Python foundations for AI-oriented development.
- Building and testing a privacy-aware face-detection and anonymization application.
- Practising backend API development with FastAPI and frontend integration with React.
- Improving reproducibility through dependency management, tests, containers, and deployment configuration.

## Learning Progress

| Area | Status | Evidence in this repository |
| --- | --- | --- |
| Python foundations | In progress | Exercises under `Python/` |
| Applied computer vision | In progress | Face detection, anonymization, and detector benchmarking |
| Backend engineering | In progress | FastAPI endpoints, media handling, tests, and container configuration |
| User-facing application | In progress | React interface connected to the face-detection API |
| Data and SQL | Planned | Future learning stage |
| Machine learning foundations | Planned | Future learning stage |
| PyTorch and deep learning | Planned | Future learning stage |
| MLOps and monitoring | Planned | Future learning stage |
| Transformers, RAG, and LLM engineering | Planned | Future learning stage |
| Full-stack AI deployment | Planned | Future learning stage |

This roadmap describes my intended progression, not a claim that every area has already been completed. Status changes will be supported by corresponding code, notes, experiments, or projects in the repository.

## Repository Structure

- `Python/` — Python learning exercises and local project configuration.
- `FaceDetection/` — the current face-detection and anonymization project, with backend source and tests, frontend source and assets, an exploration notebook, scripts, and deployment configuration.

Local environments, installed dependencies, generated builds, model weights, caches, and manual test inputs are intentionally excluded from version control.

### Python Environments

The Python exercises and face-detection project use separate local environments so their Python versions and dependencies do not conflict:

- `Python/python-for-ai/.venv` belongs to the Python learning workspace.
- `FaceDetection/.venv` belongs to the face-detection project.

When the repository root is opened in VS Code, the workspace settings register both folders as independent Python projects. When either folder is opened by itself, its local settings select that folder's `.venv`. Virtual-environment contents remain local and are never committed.

## Engineering Practices

- Keep commits small and tied to genuine daily progress.
- Separate source and configuration from generated artifacts and local dependencies.
- Keep secrets, credentials, private data, large datasets, and model weights out of Git.
- Test important behavior and document meaningful implementation changes.
- Evaluate systems with relevant measurements instead of relying only on successful demos.
- Prefer reproducible dependency and deployment configuration over machine-specific state.
- Treat deployment, observability, reliability, and user experience as parts of AI engineering—not afterthoughts.
