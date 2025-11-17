# EECS568 Data Mining Project - Development Plan

**Due Date:** December 1, 2025

---

## Overview

This project involves implementing and analyzing 8 neural network experiments on the MNIST dataset using PyTorch. All work is to be completed in a Jupyter notebook (`Project.ipynb`).

---

## Phase Organization

### 📁 Phase 1: Foundation
**Goal:** Set up data pipeline
**Duration:** 1-2 hours
**Dependencies:** None

| Issue | Title | Priority | Effort |
|-------|-------|----------|--------|
| 01 | Implement Data Loaders | High | 1-2h |

**Key Deliverable:** Working DataLoaders with batch_size=64

---

### 📁 Phase 2: Baseline & Initial Experiments
**Goal:** Establish baseline and test initial variations
**Duration:** 7-10 hours
**Dependencies:** Phase 1

| Issue | Title | Priority | Effort | Dependencies |
|-------|-------|----------|--------|--------------|
| 02 | Baseline Model (32-32) | **Critical** | 3-4h | Issue #1 |
| 03 | Wider Network (64-64) | High | 2-3h | Issue #2 |
| 04 | SGD with Momentum | High | 2-3h | Issues #2, #3 |

**Key Deliverables:**
- Baseline validation accuracy (reference point)
- Width vs. accuracy analysis
- Optimizer enhancement analysis

**⚠️ Important:** Issue #2 must be completed first as it serves as the baseline for all comparisons.

---

### 📁 Phase 3: Advanced Experiments
**Goal:** Explore hyperparameters and architecture
**Duration:** 6-9 hours
**Dependencies:** Phase 2 (Issue #2 minimum)

| Issue | Title | Priority | Effort | Can Run in Parallel? |
|-------|-------|----------|--------|---------------------|
| 05 | Batch Size Experiments | Medium | 2-3h | ✓ Yes |
| 06 | Depth Experiment (3 layers) | Medium | 2-3h | ✓ Yes |
| 07 | Dropout Regularization | Medium | 3-4h | ✓ Yes |

**Key Deliverables:**
- Batch size trade-offs analysis
- Depth vs. performance analysis
- Regularization effects analysis

**💡 Tip:** These experiments can be run independently after Issue #2 is complete.

---

### 📁 Phase 4: Final Optimization
**Goal:** Design optimal model based on learnings
**Duration:** 3-5 hours
**Dependencies:** Phases 2 & 3 (Issues #2-7)

| Issue | Title | Priority | Effort | Dependencies |
|-------|-------|----------|--------|--------------|
| 08 | Optimal Model Design | **Critical** | 3-5h | Issues #2-7 |

**Key Deliverables:**
- Final model architecture with justification
- Loss curve visualization
- Best validation accuracy achieved
- Comprehensive design rationale

---

### 📁 Phase 5: Final Deliverable
**Goal:** Compile results and prepare submission
**Duration:** 2-3 hours
**Dependencies:** All previous phases

| Issue | Title | Priority | Effort | Dependencies |
|-------|-------|----------|--------|--------------|
| 09 | Final Documentation | **Critical** | 2-3h | Issue #8 |

**Key Deliverables:**
- Comprehensive results table
- Key findings summary
- Final recommendations
- Submission-ready notebook

---

## Timeline Recommendations

### Conservative Timeline (3 weeks)
```
Week 1 (Nov 11-17):
  - Phase 1: Data loaders (Issue #1)
  - Phase 2: Baseline & initial experiments (Issues #2-4)

Week 2 (Nov 18-24):
  - Phase 3: Advanced experiments (Issues #5-7)

Week 3 (Nov 25 - Dec 1):
  - Phase 4: Optimal model (Issue #8)
  - Phase 5: Final documentation (Issue #9)
  - Final review and submission
```

### Aggressive Timeline (2 weeks)
```
Week 1 (Nov 18-24):
  - Days 1-2: Phases 1-2 (Issues #1-4)
  - Days 3-5: Phase 3 (Issues #5-7, in parallel)
  - Days 6-7: Buffer time

Week 2 (Nov 25 - Dec 1):
  - Days 1-3: Phase 4 (Issue #8)
  - Days 4-5: Phase 5 (Issue #9)
  - Days 6-7: Final review and submission prep
```

---

## Metrics to Track

For **every** experiment, record:

| Metric | Description | Example |
|--------|-------------|---------|
| Architecture | Layer configuration | Input → 32 → 32 → 10 |
| Validation Accuracy | % correct on test set | 94.5% |
| Training Time | Total time for 30 epochs | 125.3s |
| Time/Epoch | Average per epoch | 4.2s |
| Parameters | Total model parameters | 25,450 |
| Optimizer | Optimizer config | SGD(lr=0.01, momentum=0.9) |
| Batch Size | Training batch size | 64 |

---

## Critical Success Factors

### ✓ Must Have
1. All 8 questions completed with code and analysis
2. Baseline model (Issue #2) completed first
3. All analysis questions answered in markdown cells
4. Final results comparison table
5. Loss curve visualization for optimal model
6. Notebook runs end-to-end without errors

### ✓ Should Have
1. Clean, well-documented code
2. Professional formatting
3. Clear visualizations
4. Insightful analysis
5. Practical recommendations

### ✓ Nice to Have
1. Additional visualizations
2. Statistical significance testing
3. Extended discussion of findings

---

## Issue File Locations

All issues are located in the `/issues` folder:

```
issues/
├── README.md                                    # Detailed phase guide
├── phase1-issue01-data-loaders.md              # Phase 1
├── phase2-issue02-baseline-model.md            # Phase 2
├── phase2-issue03-wider-network.md             # Phase 2
├── phase2-issue04-momentum-optimizer.md        # Phase 2
├── phase3-issue05-batch-size.md                # Phase 3
├── phase3-issue06-depth-experiment.md          # Phase 3
├── phase3-issue07-dropout-regularization.md    # Phase 3
├── phase4-issue08-optimal-model.md             # Phase 4
└── phase5-issue09-final-documentation.md       # Phase 5
```

---

## Quick Start

1. **Read** `issues/README.md` for detailed phase information
2. **Start** with `issues/phase1-issue01-data-loaders.md`
3. **Complete** issues sequentially by phase
4. **Track** progress by checking off acceptance criteria
5. **Document** all results in `Project.ipynb`

---

## Getting Help

Each issue file contains:
- Detailed acceptance criteria
- Implementation notes and tips
- Comparison metric templates
- Code snippets where helpful
- Discussion points for analysis

---

## Final Submission Checklist

Before December 1, 2025:

- [ ] All 9 issues completed
- [ ] All acceptance criteria checked off
- [ ] Jupyter notebook runs end-to-end
- [ ] All analysis questions answered
- [ ] Results table complete
- [ ] Visualizations clear and labeled
- [ ] Code is clean and documented
- [ ] No placeholder text remains
- [ ] Kernel restarted and all cells run successfully

---

**Good luck with your project!** 🚀
