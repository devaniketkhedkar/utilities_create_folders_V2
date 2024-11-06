# utilities_create_folders_V2
Daily Work Journal Utility V2.0 – Batch Script
*Introduction*
If you're someone who likes to keep track of your daily work or personal tasks, this batch script is a productivity tool you didn’t know you needed. The utility allows you to automatically create a folder and a corresponding text file for each day of a specified year and month, making it easy to log your daily notes, work achievements, or project updates.

*What’s New in Version 2.0?*
In version V2.0, I've added two major improvements that enhance flexibility and usability:

Year Input: Now, you can specify the year for which you want to generate folders and text files, allowing you to create journals for any year you choose.
Input Validation: The script now ensures that the month and year inputs are valid:
- Month input is validated to ensure it’s exactly two digits (e.g., "01" to "12").
- Year input is validated to ensure it’s exactly four digits.
- Only numeric input is accepted, preventing invalid inputs such as letters or special characters.

*Why I Created This Script*
In my own daily office routine, I’ve found it incredibly helpful to jot down my to-dos, key accomplishments, and even screenshots of issues I'm working on. Over time, I developed a habit of saving these notes in a dedicated folder for each day. This not only helped me track what I’d done on a particular day but also allowed me to leave a note for the next day’s tasks before heading out of the office.

Initially, creating a new folder and text file manually for each day was time-consuming. That’s when I decided to create a batch script to automate this process. When I first started out, I had very little knowledge of BATCH scripting, but by focusing on building this tool, I was able to learn the language effectively and create something that solved my problem.

Now, with Version 2.0, I’ve added the ability to specify a year, along with better validation of the input. This ensures that no matter what year or month you want to create folders and files for, the script will always behave as expected.

*How the Utility Works*
This Daily Work Journal Utility allows you to create folders and text files for each day of a specified year and month. Here’s how to use it:

*Download and Copy:*
Copy the batch script to the directory where you want to create your daily folders and text files.

*Run the Script:*
Execute the script in the folder where you want to create your daily folders.

*Enter the Year:*
The script will prompt you to enter the year (e.g., 2024), allowing you to create a journal for any year you need.

*Enter the Month:*
- After entering the year, the script will ask you to enter the month in MM format (e.g., 01 for January, 02 for February). Input validation ensures the month is:
Exactly two digits (01-12).
- Numeric only (no letters, special characters, or invalid input like "f1" or "1e").
*Folder and Text File Creation:*
The script will create a folder for each day of the specified month and year (e.g., 01, 02, ..., 31 for January). Inside each folder, a corresponding text file (e.g., 01-01-2024.txt, 02-01-2024.txt, etc.) will be created with a placeholder text ("This is a test file").
You can edit these text files as needed to add your daily logs.

*Features*
- Year Input: Flexibility to choose any year.
- Month Input Validation: Ensures only valid month inputs (01-12) are accepted.
- Automatic Folder Creation: Generates folders for each day of the specified month and year.
- Text File Generation: Automatically creates text files with placeholder content, ready for your daily logs.
- Customizable: Feel free to modify the script to suit your needs, from changing the default text in the files to adding extra features.

*Use Cases*
- Daily Work Journal: Track your work achievements, to-dos, and milestones each day.
- Personal Notes: Organize your personal projects or notes by day.
- Office Documentation: Store work-related updates, issues, and solutions in an organized manner, easily traceable by date.

*Why You’ll Love It*
- Time-Saving: Say goodbye to manually creating folders and text files each day. The script does it for you automatically.
- Better Organization: Your notes will be neatly organized by day, making it easy to find what you're looking for.
- Customizable: You can easily adjust the script or the content of the text files to match your own needs.
- Learn BATCH Scripting: For those new to scripting, this is a great learning project that gives you hands-on experience with BATCH scripting.

*Next Steps*
Ready to give the Daily Work Journal Utility V2.0 a try?

Download the script from the repository.
- Run the script to create your daily folders and text files.
- Feel free to modify it to better fit your personal or work-related needs!

*If you have any questions or need assistance with customization, feel free to reach out! Happy Journaling! ✌*
