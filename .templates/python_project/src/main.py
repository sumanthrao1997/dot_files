from pathlib import Path
import typer

docstring = "write your help here"
app = typer.Typer(rich_markup_mode="rich")

@app.command(help=docstring)
def your_awesome_pipeline(data: Path = typer.Argument(..., help="your path", show_default=False)):
    print(data)


if __name__ == "__main__":
    app()
