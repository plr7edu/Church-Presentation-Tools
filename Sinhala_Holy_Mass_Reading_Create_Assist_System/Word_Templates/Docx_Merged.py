from docxcompose.composer import Composer
from docx import Document

def merge_docs_with_page_breaks(output_path, *input_paths):
    base_doc = Document(input_paths[0])
    composer = Composer(base_doc)

    for file_path in input_paths[1:]:
        doc = Document(file_path)
        
        # adding page break before merging each document
        base_doc.add_page_break()
        composer.append(doc)

    composer.save(output_path)
    print(f"Documents merged successfully into {output_path}")

if __name__ == "__main__":
    # Update input_files list with your specific documents
    output_file = "merged_document_with_page_breaks.docx"
    input_files = [
        "1.1.First_Reading.docx",
        "1.2.Responsorial_Psalm.docx",
        "1.3.Second_Reading.docx",
        "1.4.Aleluya.docx",
        "1.5.Gospel.docx",
        "2.1.Introduction.docx",
        "2.2.The_Prayer_of_the_Faithful_(Bidding_Prayers).docx"
    ]
    # Specify the path to your directory
    path = "C:\\Church-Presentation-Tools\\Sinhala_Holy_Mass_Reading_Create_Assist_System\\Word_Templates\\"
    # Prepend the path to each input file
    input_files = [path + file for file in input_files]
    
    merge_docs_with_page_breaks(output_file, *input_files)

    
    # Close the script
    sys.exit()

