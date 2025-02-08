# Satellite Temperature Data Analysis

This repository contains a script to analyze a satelite temperature dataset forked from hmusangwa/lab-1_sateliteDataAnalysis. The dataset is stored in the `raw_data` directory, and the analyzed results are stored in the `analyzed_data` directory.

## 📁 Project Structure

```
project-folder/
│-- analyzed_data/        # Stores processed and analyzed data
│   ├── highest_temp.csv  # Top 10 highest temperatures
│   ├── humidity_data_Ethiopia.csv  # Ethiopia's data sorted by humidity
│-- raw_data/             # Stores raw dataset
│   ├── satelite_temperature_data.csv  # The dataset for analysis
│-- insights_script.sh    # Shell script to process the data
│-- README.md             # Documentation (this file)
```

## 🚀 Getting Started

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/Abi-Seth/lab-1_sateliteDataAnalysis.git
cd lab-1_sateliteDataAnalysis
```

### 2️⃣ Ensure You Have Execution Permissions

```bash
chmod +x insights_script.sh
```

### 3️⃣ Run the Script

Execute the script to analyze the data:

```bash
./insights_script.sh
```

## 📊 What Does the Script Do?

The `` performs the following operations:

### Step 1: Ensure `analyzed_data` Directory Exists

- If the directory does not exist, it creates it.
- If it exists, it proceeds without overwriting.

### Step 2: Check for Raw Data File

- It ensures that `satelite_temperature_data.csv` is available in `raw_data/`.
- If the file is missing, the script exits with an error message.

### Step 3: Extract the Top 10 Highest Temperatures

- Sorts the dataset based on temperature (column 3, descending order).
- Saves the top 10 records (along with the header) to `analyzed_data/highest_temp.csv`.

### Step 4: Extract Ethiopia's Data and Sort by Humidity

- Extracts all data for **Ethiopia**.
- Sorts the extracted data based on humidity (column 4, descending order).
- Saves the sorted results in `analyzed_data/humidity_data_Ethiopia.csv`.

## 📝 Example Output Files

### 🔥 `highest_temp.csv` (Top 10 Highest Temperatures)

| Country                  | Month | Temperature | Humidity |
| ------------------------ | ----- | ----------- | -------- |
| Guinea                   | July  | 49.99       | 45.68    |
| Guinea                   | July  | 49.99       | 45.68    |
| ...                      | ...   | ...         | ...      |

### 💧 `humidity_data_Ethiopia.csv` (Sorted by Humidity)

| Country  | Month | Temperature | Humidity |
| -------- | ----- | ----------- | -------- |
| Ethiopia | June  | 44.09       | 87.6     |
| Ethiopia | June  | 26.06       | 87.06    |
| ...      | ...   | ...         | ...      |

## 🛠 Troubleshooting

If you get any errors, check:

- That the **dataset file exists** in `raw_data/`.
- That the script has **execution permissions** (`chmod +x insights_script.sh`).
- That you **run the script from the correct directory** (`cd lab-1_sateliteDataAnalysis/`).

## 📌 Notes

- Modify the `COUNTRY` variable inside `insights_script.sh` to extract and sort data for a different country.
- The script currently processes **Ethiopia** by default.

## 👥 Contributors
- **Seth Abijuru** - [Abi-Seth](https://github.com/abi-seth)
- **Grace Umwari** - [Gasasiragrace](https://github.com/Gasasiragrace)
- **Emmanuel Shema** - [Shema-8](https://github.com/Shema-8)
- **Flavienne Benihirwe** - [Flavienne](https://github.com/Flavienne)
- **Tabitha Akimana** - [tdorcas-akim](https://github.com/tdorcas-akim)

---

🚀 **Thank You and Happy Data Analyzing!**
