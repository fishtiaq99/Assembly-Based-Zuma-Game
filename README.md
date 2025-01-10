# Assembly-Based Zuma Game

Welcome to the Assembly-Based Zuma Game! This project is a recreation of the classic Zuma game, developed using Assembly language with the **Irvine32 Library** for input/output operations. 

## Features

- **Dynamic Gameplay**: Shoot and match balls of the same color to clear them before they reach the end of the path.
- **Levels**:
  - **Level 1**: Basic gameplay to clear balls.
  - **Level 2**: Introduces power-ups to slow down ball movement.
  - **Level 3**: Adds tunnels and bomb power-ups for enhanced challenges.
- **Scoring System**: Progress through levels by achieving target scores.
- **Lives System**: Manage limited lives to stay in the game.
- **Sound Effects**: Includes sound feedback for actions.
- **Instructions Screen**: Provides in-game guidance for players.

## Getting Started

### Prerequisites
To run the project, you need:
1. **Microsoft Visual Studio** (with Assembly language support):
   - Ensure x86 build tools are installed.
   - Include the MASM (Microsoft Macro Assembler) toolset.
2. **Irvine32 Library**:
   - Download the library from [Irvine32 Official Site](https://www.kipirvine.com/asm/examples/).

### Setting Up in Visual Studio
1. **Download the Project**: Clone or download this repository.
2. **Add Irvine32 Library**:
   - Copy the `Irvine` folder (from the downloaded Irvine32 package) into your project directory.
   - Set the library paths in Visual Studio:
     - Go to **Project > Properties > VC++ Directories**.
     - Add the Irvine folder to:
       - **Include Directories** (for header files).
       - **Library Directories** (for `.lib` files).
3. **Configure the Project**:
   - Go to **Project > Properties > Linker > Input**.
   - Add `Irvine32.lib` to the **Additional Dependencies**.
4. **Build and Run**:
   - Ensure the platform is set to `x86`.
   - Build the solution and run the game.

## Repository Contents

- `ZumaGameProject.asm`: The main Assembly code file for the game.
- `Zuma Game Report.pdf`: A detailed report of the project.
- `Audio.wav`: Sound file used in the game.
- `Zuma_Game_Code_Snippets.pdf`: Snippets showcasing various game instances.

## Gameplay

- Use the keyboard to control the shooter.
- Match at least three balls of the same color to clear them.
- Avoid letting the balls reach the end of the path.
- Enjoy different challenges across levels, including tunnels and power-ups.

## Acknowledgments

- **Irvine32 Library**: For providing Assembly language support.
- Inspired by the classic Zuma game mechanics.
