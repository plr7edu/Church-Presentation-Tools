import os
from PIL import Image
from reportlab.pdfgen import canvas
from pathlib import Path
import time
import sys

def collect_images(directory_path):
    image_paths = []
    for root, dirs, files in os.walk(directory_path):
        for file in sorted(files):
            if file.lower().endswith(('.png', '.jpg', '.jpeg')):
                image_paths.append(Path(root) / file)
    return image_paths

def images_to_pdf(image_paths, pdf_path):
    if not image_paths:
        print("\nNo images to convert.")
        return

    pdf_canvas = canvas.Canvas(str(pdf_path))
    print()
    for idx, image_path in enumerate(image_paths, 1):
        try:
            with Image.open(image_path) as img:
                img_width, img_height = img.size
                pdf_canvas.setPageSize((img_width, img_height))
                pdf_canvas.drawImage(str(image_path), 0, 0, width=img_width, height=img_height)
                pdf_canvas.showPage()
                print(f"Processed {idx}/{len(image_paths)}: {image_path}")
        except Exception as e:
            print(f"Error processing {image_path}: {e}")
    pdf_canvas.save()
    print(f"\nPDF created successfully: {pdf_path}")

def process_images(directory_path, pdf_name):
    image_paths = collect_images(directory_path)
    output_pdf_path = os.path.join(directory_path, pdf_name)
    images_to_pdf(image_paths, output_pdf_path)

if __name__ == "__main__":
    images_location_1 = "C:\\Church-Presentation-Tools\\Sinhala-Holy-Mass-Reading-Create-Assist-System\\Image-To-PDF-Templates\\Original-Bible-Reading-Book"
    images_location_2 = "C:\\Church-Presentation-Tools\\Sinhala-Holy-Mass-Reading-Create-Assist-System\\Image-To-PDF-Templates\\Sunday-Mass-Guide-Book"

    process_images(images_location_1, "Original Bible Reading Book - .pdf")
    process_images(images_location_2, "Sunday Mass Guide Book - .pdf")


    # Close the script
    sys.exit()
