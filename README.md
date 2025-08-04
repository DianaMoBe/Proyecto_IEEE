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
| `Entradas.xlsx` | Input chemical composition dataset for ANN |
| `Salidas.xlsx` | Target mechanical properties for supervised learning |
| `BD_RLM.xlsx` | Manually curated dataset for MLR model |
| `BD_resultados.xlsx` | Comparison of ANN, MLR, and target values |
| `BD_validacion.xlsx` | Published experimental data for model validation |
| `BD_resultados_validacion.xlsx`	| ANN and MLR estimations vs experimental benchmarks | 

---

**Scripts/Preprocessing and Modeling**

| File |  Description |
|--------|-------------|
| `principal_red.m` | Main ANN execution routine (MATLAB) |
| `normalizar_vector.m` | Input vector normalization function |

---

**Process flow**

1. Data loading from `Entradas.xlsx` and `Salidas.xlsx`
2. Normalization using `normalizar_vector.m`
3. Model training and estimation via `principal_red.m`
4. Output denormalization, manually performed in Excel:

	X_real = X_norm * (X_max - X_min) + X_min

	Where:
	- X_real: value in real units
	- X_norm: normalized value
	- X_max / X_min: maximum and minimum used in the normalization process

5. Comparative evaluation:

	ANN, MLR vs data real (`BD_resultados.xlsx`)
	External validation (`BD_resultados_validacion.xlsx`)

6. Result visualization stored in `graficas` folder

---

**Requirements**

- MATLAB R2022a or later.
- Microsoft Excel

---

**Contact**

For questions or replication results:

Diana Guadalupe Molina Bermúdez 

d2103024@itcelaya.edu.mx

