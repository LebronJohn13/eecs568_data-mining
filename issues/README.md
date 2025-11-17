# EECS568 Data Mining Project - Issues

This folder contains all project issues organized by development phases. Each issue corresponds to one of the 8 questions in the project, plus a final documentation issue.

**Due Date:** December 1, 2025

---

## Phase Structure

### Phase 1: Foundation
**Timeline:** Complete first
**Dependencies:** None

This phase establishes the data pipeline required for all subsequent experiments.

- **[Issue 01](phase1-issue01-data-loaders.md)** - Implement Data Loaders for Training and Testing Sets
  - Priority: High
  - Estimated Effort: 1-2 hours
  - Creates DataLoaders with batch_size=64

---

### Phase 2: Baseline & Initial Experiments
**Timeline:** Complete sequentially
**Dependencies:** Phase 1

This phase establishes the baseline model and conducts initial experiments with width and optimizer tuning.

- **[Issue 02](phase2-issue02-baseline-model.md)** - Create Baseline Sequential Neural Network (Input → 32 → 32 → 10)
  - Priority: Critical
  - Estimated Effort: 3-4 hours
  - **Must complete first** - serves as reference for all comparisons
  - Documents baseline validation accuracy and training time

- **[Issue 03](phase2-issue03-wider-network.md)** - Experiment with Wider Network Architecture (Input → 64 → 64 → 10)
  - Priority: High
  - Estimated Effort: 2-3 hours
  - Depends on: Issue #2
  - Analyzes impact of network width on performance

- **[Issue 04](phase2-issue04-momentum-optimizer.md)** - Add Momentum and Decay to SGD Optimizer
  - Priority: High
  - Estimated Effort: 2-3 hours
  - Depends on: Issues #2, #3
  - Tests optimizer enhancements on baseline architecture

---

### Phase 3: Advanced Experiments
**Timeline:** Can be completed in parallel
**Dependencies:** Phase 2 (specifically Issue #2)

This phase explores various hyperparameters and architectural choices. These experiments can be run independently of each other.

- **[Issue 05](phase3-issue05-batch-size.md)** - Analyze Impact of Different Batch Sizes
  - Priority: Medium
  - Estimated Effort: 2-3 hours
  - Tests batch_size=32 and batch_size=128

- **[Issue 06](phase3-issue06-depth-experiment.md)** - Add Third Hidden Layer to Network
  - Priority: Medium
  - Estimated Effort: 2-3 hours
  - Architecture: Input → 32 → 32 → 32 → 10

- **[Issue 07](phase3-issue07-dropout-regularization.md)** - Implement Dropout Regularization
  - Priority: Medium
  - Estimated Effort: 3-4 hours
  - Tests dropout(0.5) on wider network (128-128)

---

### Phase 4: Final Optimization
**Timeline:** Complete after all experiments
**Dependencies:** Phases 2 & 3 (Issues #2-7)

This phase synthesizes all learnings to create the optimal model.

- **[Issue 08](phase4-issue08-optimal-model.md)** - Design and Implement Best Performing Model
  - Priority: Critical
  - Estimated Effort: 3-5 hours
  - Combines best practices from all experiments
  - Includes loss curve visualization
  - Requires justification for all design choices

---

### Phase 5: Final Deliverable
**Timeline:** Complete last
**Dependencies:** All previous phases

This phase compiles all results and prepares the final submission.

- **[Issue 09](phase5-issue09-final-documentation.md)** - Final Results Compilation and Documentation
  - Priority: Critical
  - Estimated Effort: 2-3 hours
  - Creates comprehensive results table
  - Documents key findings and recommendations
  - Ensures notebook is ready for submission

---

## Workflow Recommendations

### Sequential Approach (Recommended)
1. **Week 1:** Complete Phase 1 & Phase 2 (Issues #1-4)
2. **Week 2:** Complete Phase 3 (Issues #5-7)
3. **Week 3:** Complete Phase 4 & Phase 5 (Issues #8-9)

### Parallel Approach (Faster)
1. **Days 1-3:** Issues #1-2 (Foundation & Baseline)
2. **Days 4-8:** Issues #3-7 (Run experiments in parallel)
3. **Days 9-11:** Issue #8 (Optimal model)
4. **Days 12-13:** Issue #9 (Documentation)
5. **Day 14:** Final review and submission prep

---

## Issue Naming Convention

Files are named using the pattern: `phase{N}-issue{NN}-{description}.md`

- `{N}` - Phase number (1-5)
- `{NN}` - Issue number (01-09)
- `{description}` - Brief description in kebab-case

---

## Progress Tracking

Track your progress by checking off acceptance criteria in each issue file:

```
- [ ] Uncompleted task
- [x] Completed task
```

---

## Metrics to Track

For each model, document:
- **Architecture** (e.g., 32-32, 64-64, etc.)
- **Validation Accuracy** (%)
- **Training Time** (seconds)
- **Parameters** (total count)
- **Hyperparameters** (learning rate, batch size, momentum, etc.)

---

## Priority Legend

- **Critical:** Must complete, blocking other work
- **High:** Important, should complete soon
- **Medium:** Nice to have, complete after high-priority items

---

## Questions or Issues?

If you encounter problems:
1. Check the implementation notes in each issue
2. Review previous issues for reference implementations
3. Verify all dependencies are met
4. Ensure data loaders are working correctly (Issue #1)

---

## Final Checklist

Before submission (December 1, 2025):

- [ ] All 9 issues completed
- [ ] All acceptance criteria checked off
- [ ] Jupyter notebook runs end-to-end without errors
- [ ] All analysis questions answered
- [ ] Results table completed
- [ ] Visualizations created
- [ ] Code is clean and well-documented
