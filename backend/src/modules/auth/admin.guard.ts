import { Role } from './roles.enum';

export function isAdmin(userRole: Role) {
  return userRole === Role.ADMIN;
}