class Room {
  final int roomId;
  final String roomNumber;
  final double cost;
  final String description;
  final String availability;

  Room({
    required this.roomId,
    required this.roomNumber,
    required this.cost,
    required this.description,
    required this.availability,
  });
}

List<Room> generateDummyRooms() {
  return [
    Room(
      roomId: 1,
      roomNumber: '101',
      cost: 100.0,
      description: 'Standard Room with a view',
      availability: 'Checked Out',
    ),
    Room(
      roomId: 2,
      roomNumber: '201',
      cost: 150.0,
      description: 'Deluxe Room with amenities',
      availability: 'Pending / Cleaning',
    ),
    Room(
      roomId: 3,
      roomNumber: '301',
      cost: 200.0,
      description: 'Suite with jacuzzi',
      availability: 'Booked',
    ),
    Room(
      roomId: 4,
      roomNumber: '306',
      cost: 200.0,
      description: 'Suite with jacuzzi',
      availability: 'Vacant',
    ),
    Room(
      roomId: 5,
      roomNumber: '406',
      cost: 200.0,
      description: 'Suite with jacuzzi',
      availability: 'Occupied',
    ),
    Room(
      roomId: 6,
      roomNumber: '466',
      cost: 200.0,
      description: 'Suite with jacuzzi',
      availability: 'Reserve',
    ),
    // Add more rooms as needed
  ];
}
