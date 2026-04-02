import React, { useState } from 'react';
import { Play, Pause, SkipBack, SkipForward, Music2 } from 'lucide-react';

export default function MusicWidget() {
  const [playing, setPlaying] = useState(false);

  return (
    <div className="rounded-xl bg-gradient-to-br from-gray-800/90 to-gray-900/90 p-4 backdrop-blur-sm border border-white/5">
      <div className="flex items-center gap-1 mb-2">
        <Music2 className="w-3 h-3 text-green-400" />
        <span className="text-[10px] text-white/60 uppercase tracking-wider">Spotify</span>
      </div>
      <div className="flex items-center gap-3">
        <div className="w-12 h-12 rounded-lg bg-gradient-to-br from-purple-600 to-pink-500 flex items-center justify-center flex-shrink-0">
          <span className="text-[8px] font-bold text-white tracking-widest">PHANTOM</span>
        </div>
        <div className="min-w-0">
          <p className="text-sm text-white font-medium truncate">Black Out Days</p>
          <p className="text-xs text-white/50 truncate">Phantogram</p>
        </div>
      </div>
      <div className="flex items-center justify-center gap-4 mt-3">
        <button className="text-white/60 hover:text-white transition-colors">
          <SkipBack className="w-4 h-4" />
        </button>
        <button 
          onClick={() => setPlaying(!playing)}
          className="w-8 h-8 rounded-full bg-white flex items-center justify-center hover:scale-105 transition-transform"
        >
          {playing ? (
            <Pause className="w-4 h-4 text-black" />
          ) : (
            <Play className="w-4 h-4 text-black ml-0.5" />
          )}
        </button>
        <button className="text-white/60 hover:text-white transition-colors">
          <SkipForward className="w-4 h-4" />
        </button>
      </div>
    </div>
  );
}
