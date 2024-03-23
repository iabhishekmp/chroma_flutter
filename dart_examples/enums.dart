enum FileType {
  image,
  video,
  document,
  ;
}

enum UserRole {
  admin(permissions: ['all']),
  editor(permissions: ['edit', 'create']),
  viewer(permissions: ['read']),
  ;

  final List<String> permissions;

  const UserRole({required this.permissions});
}

void main() {
  final fileType = FileType.image;
  print(fileType);

  UserRole userRole = UserRole.editor;
  print(userRole.permissions); // Output: ['edit', 'create']
}
