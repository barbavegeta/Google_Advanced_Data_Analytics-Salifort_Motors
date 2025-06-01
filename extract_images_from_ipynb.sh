jupyter nbconvert \
    --to html \
    --template classic \
    --ExtractOutputPreprocessor.enabled=True \
    --ExtractOutputPreprocessor.extract_output_types='image/png' \
    --output-dir=exported_files \
    SB_Activity_Salifort_Motors_project_lab.ipynb