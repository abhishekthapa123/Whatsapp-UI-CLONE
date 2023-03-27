class ChatModel {
  final String name;
  final String time;
  final String message;
  final String avatar;
  ChatModel(
      {required this.name,
      required this.time,
      required this.message,
      required this.avatar});
}

List<ChatModel> chatData = [
  ChatModel(name: "Rahul", time: "10:00", message: "How are you?", avatar:"assets/images/person1.jpg"),
  ChatModel(name: "Sonam", time: "10:00", message: "Fine?", avatar:"assets/images/person2.jpg"),
  ChatModel(name: "Ram", time: "10:00", message: "How?", avatar:"assets/images/no_images.png"),
ChatModel(name: "Rahul", time: "10:00", message: "How are you?", avatar:"assets/images/person1.jpg"),
  ChatModel(name: "Sonam", time: "10:00", message: "Fine?", avatar:"assets/images/person2.jpg"),
  ChatModel(name: "Ram", time: "10:00", message: "How?", avatar:"assets/images/no_images.png"),
ChatModel(name: "Rahul", time: "10:00", message: "How are you?", avatar:"assets/images/person1.jpg"),
  ChatModel(name: "Sonam", time: "10:00", message: "Fine?", avatar:"assets/images/person2.jpg"),
  ChatModel(name: "Ram", time: "10:00", message: "How?", avatar:"assets/images/no_images.png"),
];
