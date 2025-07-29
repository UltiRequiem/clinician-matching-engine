export const colors = [
  "#FF6B6B", // Red
  "#4ECDC4", // Teal
  "#45B7D1", // Blue
  "#96CEB4", // Green
  "#FFEAA7", // Yellow
  "#DDA0DD", // Plum
  "#98D8C8", // Mint
  "#F7DC6F", // Gold
  "#BB8FCE", // Purple
  "#85C1E9", // Sky Blue
  "#F8C471", // Orange
  "#82E0AA", // Light Green
  "#F1948A", // Salmon
  "#85C1E9", // Light Blue
  "#D7BDE2", // Lavender
];

export const getRandomColor = (seed: string) => {
  let hash = 0;

  for (let i = 0; i < seed.length; i++) {
    const char = seed.charCodeAt(i);
    hash = (hash << 5) - hash + char;
    hash = hash & hash;
  }

  return colors[Math.abs(hash) % colors.length];
};
