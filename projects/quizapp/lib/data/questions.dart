import 'package:quizapp/models/quiz_question.dart';

final questions = [
  // Science
  QuizQuestions(
    category: "Science",
    text: "What is the chemical symbol for water?",
    answers: ["H2O", "CO2", "O2", "H2SO4"],
    correctAnswer: "H20",
  ),
  QuizQuestions(
    category: "Science",
    text: "Which planet is known as the Red Planet?",
    answers: ["Earth", "Mars", "Venus", "Jupiter"],
    correctAnswer: "Mars",
  ),
  QuizQuestions(
    category: "Science",
    text: "What part of the cell contains genetic material?",
    answers: ["Nucleus", "Mitochondria", "Ribosome", "Golgi Apparatus"],
    correctAnswer: "Nucleus",
  ),
  QuizQuestions(
    category: "Science",
    text: "What gas do plants absorb from the atmosphere?",
    answers: ["Oxygen", "Nitrogen", "Carbon Dioxide", "Hydrogen"],
    correctAnswer: "Carbon Dioxide",
  ),
  QuizQuestions(
    category: "Science",
    text: "What is the main function of red blood cells?",
    answers: ["Fight infection", "Carry oxygen", "Digest food", "Filter blood"],
    correctAnswer: "Carry oxygen",
  ),
  QuizQuestions(
    category: "Science",
    text: "What force pulls objects toward the Earth?",
    answers: ["Magnetism", "Inertia", "Gravity", "Friction"],
    correctAnswer: "Gravity",
  ),
  QuizQuestions(
    category: "Science",
    text: "Which organ is responsible for pumping blood?",
    answers: ["Brain", "Liver", "Heart", "Kidney"],
    correctAnswer: "Heart",
  ),
  QuizQuestions(
    category: "Science",
    text: "What is the boiling point of water at sea level in Celsius?",
    answers: ["90°C", "50°C", "100°C", "212°C"],
    correctAnswer: "100°C",
  ),
  QuizQuestions(
    category: "Science",
    text: "What vitamin is produced when skin is exposed to sunlight?",
    answers: ["Vitamin A", "Vitamin B", "Vitamin C", "Vitamin D"],
    correctAnswer: "Vitamin D",
  ),
  QuizQuestions(
    category: "Science",
    text:
        "Which scientist proposed the theory of evolution by natural selection?",
    answers: [
      "Isaac Newton",
      "Albert Einstein",
      "Charles Darwin",
      "Galileo Galilei",
    ],
    correctAnswer: "Charles Darwin",
  ),

  // Math
  QuizQuestions(
    category: "Math",
    text: "What is the square root of 64?",
    answers: ["6", "7", "8", "9"],
    correctAnswer: "8",
  ),
  QuizQuestions(
    category: "Math",
    text: "What is the value of Pi (π) up to two decimal places?",
    answers: ["3.14", "3.12", "3.20", "3.15"],
    correctAnswer: "3.14",
  ),
  QuizQuestions(
    category: "Math",
    text: "What is 7 x 8?",
    answers: ["54", "56", "64", "48"],
    correctAnswer: "56",
  ),
  QuizQuestions(
    category: "Math",
    text: "How many sides does a hexagon have?",
    answers: ["5", "6", "7", "8"],
    correctAnswer: "6",
  ),
  QuizQuestions(
    category: "Math",
    text: "What is the perimeter of a rectangle with sides 5 and 10 units?",
    answers: ["15", "30", "50", "25"],
    correctAnswer: "30",
  ),
  QuizQuestions(
    category: "Math",
    text: "What is 10% of 250?",
    answers: ["15", "20", "25", "30"],
    correctAnswer: "25",
  ),
  QuizQuestions(
    category: "Math",
    text: "Solve: 15 + (6 × 2)",
    answers: ["42", "27", "33", "12"],
    correctAnswer: "27",
  ),
  QuizQuestions(
    category: "Math",
    text: "What do we call a number that is only divisible by 1 and itself?",
    answers: [
      "Even number",
      "Prime number",
      "Composite number",
      "Rational number",
    ],
    correctAnswer: "Prime number",
  ),
  QuizQuestions(
    category: "Math",
    text: "What is the name of a triangle with all sides equal?",
    answers: ["Isosceles", "Scalene", "Right", "Equilateral"],
    correctAnswer: "Equilateral",
  ),
  QuizQuestions(
    category: "Math",
    text:
        "If a pizza is cut into 8 slices and you eat 3, what fraction is left?",
    answers: ["5/8", "3/8", "1/2", "2/3"],
    correctAnswer: "5/8",
  ),

  // History
  QuizQuestions(
    category: "History",
    text: "Who was the first President of the United States?",
    answers: [
      "Thomas Jefferson",
      "Abraham Lincoln",
      "George Washington",
      "John Adams",
    ],
    correctAnswer: "George Washington",
  ),
  QuizQuestions(
    category: "History",
    text: "What year did World War II end?",
    answers: ["1940", "1945", "1950", "1939"],
    correctAnswer: "1945",
  ),
  QuizQuestions(
    category: "History",
    text: "Who was the famous non-violent leader of Indian independence?",
    answers: [
      "Jawaharlal Nehru",
      "Bhagat Singh",
      "Mahatma Gandhi",
      "Subhas Chandra Bose",
    ],
    correctAnswer: "Mahatma Gandhi",
  ),
  QuizQuestions(
    category: "History",
    text: "What ancient civilization built the pyramids?",
    answers: ["Romans", "Greeks", "Egyptians", "Mayans"],
    correctAnswer: "Egyptians",
  ),
  QuizQuestions(
    category: "History",
    text:
        "Which war was fought between the North and South regions of the United States?",
    answers: ["Revolutionary War", "World War I", "Civil War", "Vietnam War"],
    correctAnswer: "Civil War",
  ),
  QuizQuestions(
    category: "History",
    text: "Who was the famous queen of Ancient Egypt?",
    answers: ["Cleopatra", "Nefertiti", "Hatshepsut", "Elizabeth"],
    correctAnswer: "Cleopatra",
  ),
  QuizQuestions(
    category: "History",
    text:
        "What was the name of the ship that brought the Pilgrims to America in 1620?",
    answers: ["Discovery", "Mayflower", "Santa Maria", "Constitution"],
    correctAnswer: "Mayflower",
  ),
  QuizQuestions(
    category: "History",
    text: "What wall divided East and West Berlin during the Cold War?",
    answers: ["Great Wall", "Freedom Wall", "Berlin Wall", "Iron Curtain"],
    correctAnswer: "Berlin Wall",
  ),
  QuizQuestions(
    category: "History",
    text: "Who was the first man to step on the Moon?",
    answers: ["Neil Armstrong", "Yuri Gagarin", "Buzz Aldrin", "John Glenn"],
    correctAnswer: "Neil Armstrong",
  ),
  QuizQuestions(
    category: "History",
    text: "What empire was ruled by Julius Caesar?",
    answers: [
      "Greek Empire",
      "Persian Empire",
      "Roman Empire",
      "Ottoman Empire",
    ],
    correctAnswer: "Roman Empire",
  ),

  // Geography
  QuizQuestions(
    category: "Geography",
    text: "What is the longest river in the world?",
    answers: ["Amazon", "Nile", "Yangtze", "Mississippi"],
    correctAnswer: "Nile",
  ),
  QuizQuestions(
    category: "Geography",
    text: "Which continent is the Sahara Desert located in?",
    answers: ["Asia", "Africa", "Australia", "Europe"],
    correctAnswer: "Africa",
  ),
  QuizQuestions(
    category: "Geography",
    text: "What is the capital of Japan?",
    answers: ["Seoul", "Tokyo", "Kyoto", "Osaka"],
    correctAnswer: "Tokyo",
  ),
  QuizQuestions(
    category: "Geography",
    text: "Which country has the most population?",
    answers: ["USA", "China", "India", "Russia"],
    correctAnswer: "China",
  ),
  QuizQuestions(
    category: "Geography",
    text: "What ocean is on the east coast of the United States?",
    answers: ["Indian", "Pacific", "Arctic", "Atlantic"],
    correctAnswer: "Atlantic",
  ),
  QuizQuestions(
    category: "Geography",
    text: "Which country is known as the Land of the Rising Sun?",
    answers: ["Japan", "China", "Thailand", "Korea"],
    correctAnswer: "Japan",
  ),
  QuizQuestions(
    category: "Geography",
    text: "What is the tallest mountain in the world?",
    answers: ["K2", "Mount Kilimanjaro", "Mount Everest", "Mount Fuji"],
    correctAnswer: "Mount Everest",
  ),
  QuizQuestions(
    category: "Geography",
    text: "What line divides the Earth into Northern and Southern Hemispheres?",
    answers: ["Prime Meridian", "Equator", "Tropic of Cancer", "Longitude"],
    correctAnswer: "Equator",
  ),
  QuizQuestions(
    category: "Geography",
    text: "Which country is home to the Amazon Rainforest?",
    answers: ["Argentina", "Brazil", "Peru", "Colombia"],
    correctAnswer: "Brazil",
  ),
  QuizQuestions(
    category: "Geography",
    text: "What is the smallest country in the world?",
    answers: ["Monaco", "Vatican City", "Malta", "Liechtenstein"],
    correctAnswer: "Vatican City",
  ),

  // Technology
  QuizQuestions(
    category: "Technology",
    text: "What does \"HTTP\" stand for in a website address?",
    answers: [
      "HyperText Transfer Protocol",
      "HighText Transmission Protocol",
      "HyperTool Transfer Process",
      "None of the above",
    ],
    correctAnswer: "HyperText Transfer Protocol",
  ),
  QuizQuestions(
    category: "Technology",
    text: "What is the brain of the computer?",
    answers: ["RAM", "CPU", "Hard Drive", "GPU"],
    correctAnswer: "CPU",
  ),
  QuizQuestions(
    category: "Technology",
    text: "Who is considered the father of the computer?",
    answers: ["Bill Gates", "Steve Jobs", "Charles Babbage", "Alan Turing"],
    correctAnswer: "Charles Babbage",
  ),
  QuizQuestions(
    category: "Technology",
    text: "What does “AI” stand for in tech?",
    answers: [
      "Advanced Input",
      "Artificial Intelligence",
      "Automatic Integration",
      "Automated Interface",
    ],
    correctAnswer: "Artificial Intelligence",
  ),
  QuizQuestions(
    category: "Technology",
    text: "Which company developed the Android operating system?",
    answers: ["Apple", "Microsoft", "Google", "Samsung"],
    correctAnswer: "Google",
  ),
  QuizQuestions(
    category: "Technology",
    text:
        "What is the most widely used programming language for web development?",
    answers: ["Python", "Java", "HTML", "JavaScript"],
    correctAnswer: "JavaScript",
  ),
  QuizQuestions(
    category: "Technology",
    text: "What year was the first iPhone released?",
    answers: ["2005", "2007", "2010", "2008"],
    correctAnswer: "2007",
  ),
  QuizQuestions(
    category: "Technology",
    text: "What is the name of Microsoft’s spreadsheet program?",
    answers: ["PowerPoint", "Excel", "Word", "Sheets"],
    correctAnswer: "Excel",
  ),
  QuizQuestions(
    category: "Technology",
    text: "What does “URL” stand for?",
    answers: [
      "Uniform Resource Locator",
      "Universal Routing Link",
      "User Registration Line",
      "Unique Resource Link",
    ],
    correctAnswer: "Uniform Resource Locator",
  ),
  QuizQuestions(
    category: "Technology",
    text: "Which social media platform is owned by Meta?",
    answers: ["TikTok", "Snapchat", "Instagram", "Twitter"],
    correctAnswer: "Instagram",
  ),
];

//Logic To Send The Questions of Specific Category:
final scienceQuestions =
    questions
        .where((question) => question.category == "Science")
        .take(10)
        .toList();

final technologyQuestions =
    questions
        .where((question) => question.category == "Technology")
        .take(10)
        .toList();

final geographyQuestions =
    questions
        .where((question) => question.category == "Geography")
        .take(10)
        .toList();

final mathQuestions =
    questions
        .where((question) => question.category == "Math")
        .take(10)
        .toList();

final historyQuestions =
    questions
        .where((question) => question.category == "History")
        .take(10)
        .toList();
