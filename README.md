# A Comparative Between Artificial Neural Networks and Multiple Linear Regression for the Estimation of Mechanical Properties in Cast Aluminum

**Manuscript ID:** IEEE LATAM **Submission ID:** 9682

**Autors:**

- Diana Guadalupe Molina Bermúdez
- José Antonio Vázquez López
- Juan Israel Yañez Vargas
- Claudia Alejandra Gallegos Sánchez

**Affiliation:**

- TecNM/Instituto Tecnológico de Celaya
- TecNM/Instituto Tecnológico de Celaya
- Universidad Politécnica de Juventino Rosas
- Comisión Nacional del Agua

  ---

This repository includes all scripts, datasets, and instructions required to reproduce the computational results presented in the manuscript, based on Artificial Neural
Networks and Multiple Linear Regression models for the estimation of mechanical properties from the chemical composition of cast aluminum alloys.

| Data |  Description |
|--------|-------------|
| 'Entradas.xlsx' | Input chemical composition dataset for ANN |
| 'Salidas.xlsx' | Target mechanical properties for supervised learning |
| 'BD_RLM.xlsx' | Manually curated dataset for MLR model |
| 'BD_resultados.xlsx' | Comparison of ANN, MLR, and target values |
| 'BD_validacion.xlsx' | Published experimental data for model validation |
| 'BD_resultados_validacion.xlsx'	| ANN and MLR estimations vs experimental benchmarks | 

---

**Scripts/Preprocessing and Modeling**

| File |  Description |
|--------|-------------|
| 'principal_red.m' | Main ANN execution routine (MATLAB) |
| 'normalizar_vector.m' | Input vector normalization function |

---

**Process flow**



