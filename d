import React from 'react';
import { Folder, Trash2, Monitor, Globe, FileText } from 'lucide-react';

const icons = [
  { name: 'This PC', icon: Monitor },
  { name: 'Recycle Bin', icon: Trash2 },
  { name: 'Documents', icon: Folder },
  { name: 'Edge', icon: Globe },
  { name: 'Notes', icon: FileText },
];

export default function DesktopIcons() {
  return (
    <div className="absolute top-4 left-4 flex flex-col gap-2">
      {icons.map((item) => (
        <button
          key={item.name}
          className="flex flex-col items-center gap-1 w-20 p-2 rounded-lg hover:bg-white/10 transition-colors group cursor-default"
          onDoubleClick={() => {}}
        >
          <item.icon className="w-10 h-10 text-white/90 drop-shadow-lg group-hover:scale-105 transition-transform" />
          <span className="text-[11px] text-white text-center leading-tight drop-shadow-md font-normal">
            {item.name}
          </span>
        </button>
      ))}
    </div>
  );
}
