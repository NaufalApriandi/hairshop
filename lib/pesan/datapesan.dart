import 'package:chatview/chatview.dart';

class Data {
  static const profileImage =
      "https://i.pinimg.com/564x/05/c3/59/05c359cd010df3e7f1ea3cb6f6f54fad.jpg";
  static final messageList = [
    Message(
      id: '1',
      message: "Terimakasih sudah order di Nocturn Barbershop, silahkan datang sesuai dengan booking orderan.",
      createdAt: DateTime.now(),
      sendBy: '2', // userId of who sends the message
      status: MessageStatus.read,
    ),
    Message(
      id: '2',
      message: "Baik kak nanti saya akan datang!",
      createdAt: DateTime.now(),
      sendBy: '1',
      status: MessageStatus.read,
    ),
    Message(
      id: '3',
      message: "Oke kak ditunggu kedatangannya di Nocturn Barbaershop",
      createdAt: DateTime.now(),
      sendBy: '2',
      status: MessageStatus.read,
    ),
    Message(
      id: '4',
      message: "Siap kak",
      createdAt: DateTime.now(),
      sendBy: '1',
      status: MessageStatus.read,
    ),
  ];
}