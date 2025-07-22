# MATLAB Load Optimization using APSO-ANFIS

Electrical load optimization project using Adaptive Particle Swarm Optimization with Adaptive Neuro-Fuzzy Inference System.

## Features
- Peak load reduction analysis
- Cost optimization
- Automated testing with GitHub Actions
- Data visualization

## Usage
```matlab
run baseline.m

Results
The system typically achieves:

Peak load reduction: 10-25%
Cost reduction: 5-20%


### 2. Structure des dossiers :

**Create new file** → `src/baseline.m` (votre code principal)

**Create new file** → `src/evaluate_load.m` (fonction d'évaluation)

**Create new file** → `src/APSO_ANFIS.m` (algorithme d'optimisation)

**Create new file** → `data/README.md` :
```markdown
# Data Directory

Place your `.mat` files here:
- `baseline_data.mat` - Main dataset with P, L_res, L_com, L_ind
- `param.mat` - Optimization parameters (optional)

## Data Structure
- P: Power demand (24x1 vector)
- L_res: Residential load (24x1 vector)  
- L_com: Commercial load (24x1 vector)
- L_ind: Industrial load (24x1 vector)
