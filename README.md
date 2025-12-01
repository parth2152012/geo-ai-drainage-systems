# 🌾 Geo-AI Drainage Systems

[![Python 3.10+](https://img.shields.io/badge/python-3.10+-blue.svg)](https://www.python.org/downloads/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![TechFest IIT Bombay](https://img.shields.io/badge/TechFest%20IIT%20Bombay-National%20Geo--AI%20Hackathon-green)](https://techfest.org/)
[![Windows Compatible](https://img.shields.io/badge/Windows-Compatible-0078D4.svg)](#-windows-setup-guide)

> **AI-powered drainage system design for rural Indian villages using drone imagery and 3D point clouds**

---

## 🚀 Quick Start (30 seconds)

### Windows Users:
```batch
git clone https://github.com/parth2152012/geo-ai-drainage-systems.git
cd geo-ai-drainage-systems
python -m venv venv
venv\Scripts\activate.bat
pip install -r requirements.txt
make run
```

### Mac/Linux Users:
```bash
git clone https://github.com/parth2152012/geo-ai-drainage-systems.git
cd geo-ai-drainage-systems
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
make run
```

**Done!** You're now running the Geo-AI Drainage Systems pipeline 🎉

---

## 📝 What is a Makefile? (Beginner-Friendly)

Think of a **Makefile** as a **shortcut menu** for your project. Instead of typing long commands every time, you can just type `make` + a simple command.

### The Problem:
```batch
REM Without Makefile - You have to remember & type this every time:
pip install -r requirements.txt
black src/ main.py
flake8 src/ main.py --max-line-length=120
pytest tests/ -v --cov=src/
```

### The Solution:
```batch
REM With Makefile - Just type:
make dev-install
make format
make lint
make test
```

**Much easier, right?** 💪

---

## 🛠️ Available Make Commands

Run any of these commands from your terminal:

| Command | What it does | Why use it? |
|---------|-------------|------------|
| `make help` | Shows all available commands | When you forget what to do |
| `make install` | Installs project dependencies | First time setup |
| `make dev-install` | Installs with dev tools (Black, pytest, etc.) | For developers who want linting & testing |
| `make run` | Runs the main pipeline | Execute your AI model |
| `make format` | Cleans up code formatting | Make code look nice |
| `make lint` | Checks code quality | Find bugs before they happen |
| `make test` | Runs automated tests | Verify everything works |
| `make clean` | Deletes build files & cache | Free up disk space |
| `make setup-dirs` | Creates data directories | Prepare folder structure |
| `make docker-build` | Build Docker image | For deployment |
| `make docker-run` | Run in Docker container | Isolated environment |

---

## 📊 Project Overview

This project participates in the **National Geo-AI Hackathon** organized by TechFest IIT Bombay. We're building AI/ML pipelines to:

1. **Extract village features** from drone imagery and LiDAR point-cloud data
2. **Analyze terrain and drainage patterns** using computer vision and 3D processing
3. **Design resilient drainage systems** aligned with the SVAMITVA scheme for rural India
4. **Visualize proposed solutions** in geospatial formats for stakeholder decision-making

---

## 🎯 Why This Project Matters

Rural Indian villages often lack proper drainage infrastructure planning. This causes:
- Flooding during monsoons 🌊
- Water-borne diseases 🦠
- Crop damage 🌾
- Poor sanitation 🚫

**Our solution:** Automate drainage planning using AI to design optimal, cost-effective systems.

---

## ✨ Key Features

✅ **Multi-modal Feature Extraction**
- Deep learning for drone imagery (ResNet, EfficientNet)
- 3D point cloud processing (PointNet++)
- Automated building & road detection

✅ **Geospatial Analysis**
- Terrain slope calculations
- Drainage path optimization
- GeoTIFF, Shapefile, GeoJSON support

✅ **Smart Drainage Design**
- Graph Convolutional Networks (GCN)
- Water flow direction analysis
- Environmental impact assessment

✅ **Production-Ready**
- Windows/Mac/Linux compatible
- Docker support
- Comprehensive logging

---

## 📁 Project Structure

```
geo-ai-drainage-systems/
├── 📄 main.py                 # Entry point - run this!
├── 📄 config.yaml             # All settings in one place
├── 📄 requirements.txt         # Python packages needed
├── 📄 Makefile                 # Shortcut commands (see above!)
├── 📄 README.md                # This file
├── 📄 WINDOWS_SETUP.md         # Windows-specific instructions
├── 📁 src/
│   ├── models/                # AI model code
│   ├── data_processing/       # Data loading & preprocessing
│   └── utils/                 # Helper functions
├── 📁 data/                    # Your data goes here
│   ├── drone_imagery/
│   ├── pointclouds/
│   └── processed/
└── 📁 outputs/                 # Results & visualizations
```

---

## 🎓 Understanding the Stack

### Data Layer
- **Drone Imagery:** RGB/Multispectral GeoTIFF images
- **3D Point Clouds:** LAS/LAZ/PLY format with elevation data

### Processing Layer
- **CNNs:** ResNet50 for feature extraction from images
- **Point Cloud Networks:** PointNet++ for 3D geometry
- **GIS Tools:** GeoPandas, Rasterio for geospatial processing

### AI Layer
- **Feature Extraction:** Automatic building/road/water detection
- **Drainage Design:** Graph-based optimization using GCN

### Output Layer
- **Geospatial Formats:** GeoTIFF, Shapefiles, GeoJSON
- **Visualizations:** Interactive maps (Folium, Plotly)
- **Reports:** JSON with drainage recommendations

---

## 🚦 Getting Started Step-by-Step

### Step 1: Clone the Repository
```bash
git clone https://github.com/parth2152012/geo-ai-drainage-systems.git
cd geo-ai-drainage-systems
```

### Step 2: Set Up Python Virtual Environment
A **virtual environment** is like a sandbox - keeps your project's Python packages separate from your system.

```batch
# Windows
python -m venv venv
venv\Scripts\activate.bat

# Mac/Linux
python3 -m venv venv
source venv/bin/activate
```

You'll see `(venv)` in your terminal - that's the signal you're in the virtual environment ✓

### Step 3: Install Dependencies
```bash
make install
```

This downloads and installs all the AI/ML packages. It may take 5-15 minutes depending on your internet.

### Step 4: Run the Pipeline
```bash
make run
```

Walking through the pipeline:
1. Loads configuration from `config.yaml`
2. Reads drone imagery and point clouds
3. Extracts features using AI models
4. Analyzes terrain & drainage patterns
5. Designs optimal drainage systems
6. Generates visualizations
7. Saves results

---

## 📚 Learn by Doing

### Just Want to Explore the Code?
```bash
make format    # Make code look nice
make lint      # Check for issues
```

### Want to Contribute?
```bash
make dev-install   # Install testing tools
make test          # Run tests
```

### Need to Debug?
Edit `config.yaml` to change:
- Logging level (DEBUG, INFO, WARNING)
- Model parameters
- Data paths

---

## 🐛 Troubleshooting

### "Python not found"
- Install Python 3.10+ from python.org
- Make sure to check "Add Python to PATH" during installation

### "Virtual environment won't activate"
- Windows: Use `venv\Scripts\activate.bat` (not `source`)
- Mac/Linux: Use `source venv/bin/activate`

### "ModuleNotFoundError"
- Make sure virtual environment is activated (you see `(venv)` in terminal)
- Run `pip install -r requirements.txt` again

### "Make command not found (Windows)"
- Install from: https://www.gnu.org/software/make/
- Or just use the direct commands shown in the Makefile

**More help?** Check [WINDOWS_SETUP.md](WINDOWS_SETUP.md) for detailed Windows instructions

---

## 📚 Dependencies

**The Makefile installs all of these for you!**

- **ML/DL:** PyTorch, TensorFlow, scikit-learn
- **Geospatial:** GeoPandas, rasterio, Shapely, Fiona
- **Computer Vision:** OpenCV, scikit-image
- **3D Processing:** open3d, laspy, pyntcloud
- **Visualization:** Matplotlib, Seaborn, Plotly, Folium
- **Utilities:** NumPy, Pandas, Loguru, PyYAML

See `requirements.txt` for exact versions

---

## 🎯 Your Next Steps

1. ✅ **Clone** the repository
2. ✅ **Set up** virtual environment
3. ✅ **Run** `make install`
4. ✅ **Execute** `make run`
5. 📖 **Read** the code in `src/`
6. 🔧 **Modify** `config.yaml` for your data
7. 🚀 **Contribute** your improvements!

---

## 🤝 Contributing

Found a bug? Want to add a feature? We'd love your help!

```bash
# Fork the repo → Make changes → Create Pull Request
1. Fork this repository
2. Create a feature branch: git checkout -b feature/amazing-feature
3. Commit changes: git commit -m 'Add amazing feature'
4. Push to branch: git push origin feature/amazing-feature
5. Open a Pull Request
```

---

## 📞 Support & Links

- **GitHub:** https://github.com/parth2152012/geo-ai-drainage-systems
- **Hackathon:** https://techfest.org/competitions/National%20Geo-AI%20Hackathon
- **Problem Statement:** See WINDOWS_SETUP.md
- **Questions?** Create an issue on GitHub

---

## 📄 License

MIT License - Use freely, modify, and distribute with attribution.

---

## 🙏 Acknowledgments

- TechFest IIT Bombay for organizing the hackathon 🎓
- Ministry of Panchayati Raj for the problem statement 🏛️
- SVAMITVA scheme for inspiration 🌍
- Open-source communities (PyTorch, TensorFlow, GeoPandas) 💚

---

**Ready to build AI-powered solutions for rural India?** 🚀

```bash
make run   # Start now!
```

**Status:** 🚀 Active Development | **Last Updated:** December 2025
