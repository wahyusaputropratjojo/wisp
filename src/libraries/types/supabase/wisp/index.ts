export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  public: {
    Tables: {
      age_classification_system: {
        Row: {
          category: string
          created_at: string
          id: string
          logo: string | null
          organization: string
          updated_at: string
        }
        Insert: {
          category: string
          created_at?: string
          id?: string
          logo?: string | null
          organization: string
          updated_at?: string
        }
        Update: {
          category?: string
          created_at?: string
          id?: string
          logo?: string | null
          organization?: string
          updated_at?: string
        }
        Relationships: []
      }
      companies: {
        Row: {
          country: string
          created_at: string
          established_date: string
          id: string
          logo: string | null
          name: string
          updated_at: string
        }
        Insert: {
          country: string
          created_at?: string
          established_date: string
          id?: string
          logo?: string | null
          name: string
          updated_at?: string
        }
        Update: {
          country?: string
          created_at?: string
          established_date?: string
          id?: string
          logo?: string | null
          name?: string
          updated_at?: string
        }
        Relationships: []
      }
      games: {
        Row: {
          created_at: string
          description: string
          grid: Json
          hero: Json
          id: string
          is_base: boolean
          is_bundle: boolean
          is_expansion: boolean
          is_remake: boolean
          is_remaster: boolean
          is_standalone_expansion: boolean
          logo: Json
          name: string
          release_date: string
          slug: string
          updated_at: string
        }
        Insert: {
          created_at?: string
          description: string
          grid?: Json
          hero?: Json
          id?: string
          is_base?: boolean
          is_bundle?: boolean
          is_expansion?: boolean
          is_remake?: boolean
          is_remaster?: boolean
          is_standalone_expansion?: boolean
          logo?: Json
          name: string
          release_date: string
          slug: string
          updated_at?: string
        }
        Update: {
          created_at?: string
          description?: string
          grid?: Json
          hero?: Json
          id?: string
          is_base?: boolean
          is_bundle?: boolean
          is_expansion?: boolean
          is_remake?: boolean
          is_remaster?: boolean
          is_standalone_expansion?: boolean
          logo?: Json
          name?: string
          release_date?: string
          slug?: string
          updated_at?: string
        }
        Relationships: []
      }
      games_age_classification_system: {
        Row: {
          id: string
          id_age_classification_system: string
          id_game: string
        }
        Insert: {
          id?: string
          id_age_classification_system: string
          id_game: string
        }
        Update: {
          id?: string
          id_age_classification_system?: string
          id_game?: string
        }
        Relationships: [
          {
            foreignKeyName: "games_age_classification_syst_id_age_classification_system_fkey"
            columns: ["id_age_classification_system"]
            isOneToOne: false
            referencedRelation: "age_classification_system"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "games_age_classification_system_id_game_fkey"
            columns: ["id_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
        ]
      }
      games_bundles: {
        Row: {
          id: string
          id_game: string
          id_game_bundle: string
        }
        Insert: {
          id?: string
          id_game: string
          id_game_bundle: string
        }
        Update: {
          id?: string
          id_game?: string
          id_game_bundle?: string
        }
        Relationships: [
          {
            foreignKeyName: "games_bundles_id_game_bundle_fkey"
            columns: ["id_game_bundle"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "games_bundles_id_game_fkey"
            columns: ["id_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
        ]
      }
      games_developers: {
        Row: {
          id: string
          id_company: string
          id_game: string
        }
        Insert: {
          id?: string
          id_company: string
          id_game: string
        }
        Update: {
          id?: string
          id_company?: string
          id_game?: string
        }
        Relationships: [
          {
            foreignKeyName: "games_developers_id_company_fkey"
            columns: ["id_company"]
            isOneToOne: false
            referencedRelation: "companies"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "games_developers_id_game_fkey"
            columns: ["id_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
        ]
      }
      games_expansions: {
        Row: {
          id: string
          id_base_game: string
          id_expansion_game: string
        }
        Insert: {
          id?: string
          id_base_game: string
          id_expansion_game: string
        }
        Update: {
          id?: string
          id_base_game?: string
          id_expansion_game?: string
        }
        Relationships: [
          {
            foreignKeyName: "games_expansions_id_base_game_fkey"
            columns: ["id_base_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "games_expansions_id_expansion_game_fkey"
            columns: ["id_expansion_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
        ]
      }
      games_genres: {
        Row: {
          id: string
          id_game: string
          id_genre: string
        }
        Insert: {
          id?: string
          id_game: string
          id_genre: string
        }
        Update: {
          id?: string
          id_game?: string
          id_genre?: string
        }
        Relationships: [
          {
            foreignKeyName: "games_genres_id_game_fkey"
            columns: ["id_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "games_genres_id_genre_fkey"
            columns: ["id_genre"]
            isOneToOne: false
            referencedRelation: "genres"
            referencedColumns: ["id"]
          },
        ]
      }
      games_publishers: {
        Row: {
          id: string
          id_company: string
          id_game: string
        }
        Insert: {
          id?: string
          id_company: string
          id_game: string
        }
        Update: {
          id?: string
          id_company?: string
          id_game?: string
        }
        Relationships: [
          {
            foreignKeyName: "games_publishers_id_company_fkey"
            columns: ["id_company"]
            isOneToOne: false
            referencedRelation: "companies"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "games_publishers_id_game_fkey"
            columns: ["id_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
        ]
      }
      games_release_information: {
        Row: {
          id: string
          id_game: string
          id_platform: string
          id_release_phase: string
          release_date: string
        }
        Insert: {
          id?: string
          id_game: string
          id_platform: string
          id_release_phase: string
          release_date: string
        }
        Update: {
          id?: string
          id_game?: string
          id_platform?: string
          id_release_phase?: string
          release_date?: string
        }
        Relationships: [
          {
            foreignKeyName: "games_release_information_id_game_fkey"
            columns: ["id_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "games_release_information_id_platform_fkey"
            columns: ["id_platform"]
            isOneToOne: false
            referencedRelation: "platforms"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "games_release_information_id_release_phases_fkey"
            columns: ["id_release_phase"]
            isOneToOne: false
            referencedRelation: "release_phases"
            referencedColumns: ["id"]
          },
        ]
      }
      games_remakes: {
        Row: {
          id: string
          id_original_game: string
          id_remake_game: string
        }
        Insert: {
          id?: string
          id_original_game: string
          id_remake_game: string
        }
        Update: {
          id?: string
          id_original_game?: string
          id_remake_game?: string
        }
        Relationships: [
          {
            foreignKeyName: "games_remakes_id_original_game_fkey"
            columns: ["id_original_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "games_remakes_id_remake_game_fkey"
            columns: ["id_remake_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
        ]
      }
      games_remasters: {
        Row: {
          id: string
          id_original_game: string
          id_remaster_game: string
        }
        Insert: {
          id?: string
          id_original_game: string
          id_remaster_game: string
        }
        Update: {
          id?: string
          id_original_game?: string
          id_remaster_game?: string
        }
        Relationships: [
          {
            foreignKeyName: "games_remasters_id_original_game_fkey"
            columns: ["id_original_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "games_remasters_id_remaster_game_fkey"
            columns: ["id_remaster_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
        ]
      }
      games_standalone_expansions: {
        Row: {
          id: string
          id_base_game: string
          id_standalone_expansion_game: string
        }
        Insert: {
          id?: string
          id_base_game: string
          id_standalone_expansion_game: string
        }
        Update: {
          id?: string
          id_base_game?: string
          id_standalone_expansion_game?: string
        }
        Relationships: [
          {
            foreignKeyName: "games_standalone_expansions_id_base_game_fkey"
            columns: ["id_base_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "games_standalone_expansions_id_standalone_expansion_game_fkey"
            columns: ["id_standalone_expansion_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
        ]
      }
      games_themes: {
        Row: {
          id: string
          id_game: string
          id_theme: string
        }
        Insert: {
          id?: string
          id_game: string
          id_theme: string
        }
        Update: {
          id?: string
          id_game?: string
          id_theme?: string
        }
        Relationships: [
          {
            foreignKeyName: "games_themes_id_game_fkey"
            columns: ["id_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "games_themes_id_theme_fkey"
            columns: ["id_theme"]
            isOneToOne: false
            referencedRelation: "themes"
            referencedColumns: ["id"]
          },
        ]
      }
      games_videos: {
        Row: {
          id: string
          id_game: string
          thumbnail: string
          url: string
        }
        Insert: {
          id?: string
          id_game: string
          thumbnail: string
          url: string
        }
        Update: {
          id?: string
          id_game?: string
          thumbnail?: string
          url?: string
        }
        Relationships: [
          {
            foreignKeyName: "games_videos_id_game_fkey"
            columns: ["id_game"]
            isOneToOne: false
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
        ]
      }
      genres: {
        Row: {
          abbreviation_name: string | null
          created_at: string
          id: string
          name: string
          updated_at: string
        }
        Insert: {
          abbreviation_name?: string | null
          created_at?: string
          id?: string
          name: string
          updated_at?: string
        }
        Update: {
          abbreviation_name?: string | null
          created_at?: string
          id?: string
          name?: string
          updated_at?: string
        }
        Relationships: []
      }
      how_long_to_beat: {
        Row: {
          all_styles: Json
          completionist: Json
          created_at: string
          id_game: string
          main_and_sides: Json
          main_story: Json
          updated_at: string
        }
        Insert: {
          all_styles?: Json
          completionist?: Json
          created_at?: string
          id_game: string
          main_and_sides?: Json
          main_story?: Json
          updated_at?: string
        }
        Update: {
          all_styles?: Json
          completionist?: Json
          created_at?: string
          id_game?: string
          main_and_sides?: Json
          main_story?: Json
          updated_at?: string
        }
        Relationships: [
          {
            foreignKeyName: "how_long_to_beat_id_game_fkey"
            columns: ["id_game"]
            isOneToOne: true
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
        ]
      }
      metacritic: {
        Row: {
          created_at: string
          id_game: string
          meta_score: number
          updated_at: string
          user_score: number
        }
        Insert: {
          created_at?: string
          id_game: string
          meta_score: number
          updated_at?: string
          user_score: number
        }
        Update: {
          created_at?: string
          id_game?: string
          meta_score?: number
          updated_at?: string
          user_score?: number
        }
        Relationships: [
          {
            foreignKeyName: "metacritic_id_game_fkey"
            columns: ["id_game"]
            isOneToOne: true
            referencedRelation: "games"
            referencedColumns: ["id"]
          },
        ]
      }
      platforms: {
        Row: {
          alternative_name: string[] | null
          created_at: string
          family: string
          id: string
          name: string
          release_date: string
          type: string
          updated_at: string
        }
        Insert: {
          alternative_name?: string[] | null
          created_at?: string
          family: string
          id?: string
          name: string
          release_date: string
          type: string
          updated_at?: string
        }
        Update: {
          alternative_name?: string[] | null
          created_at?: string
          family?: string
          id?: string
          name?: string
          release_date?: string
          type?: string
          updated_at?: string
        }
        Relationships: []
      }
      release_phases: {
        Row: {
          created_at: string
          id: string
          name: string
          updated_at: string
        }
        Insert: {
          created_at?: string
          id?: string
          name: string
          updated_at?: string
        }
        Update: {
          created_at?: string
          id?: string
          name?: string
          updated_at?: string
        }
        Relationships: []
      }
      themes: {
        Row: {
          created_at: string
          id: string
          name: string
          updated_at: string
        }
        Insert: {
          created_at?: string
          id?: string
          name: string
          updated_at?: string
        }
        Update: {
          created_at?: string
          id?: string
          name?: string
          updated_at?: string
        }
        Relationships: []
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      [_ in never]: never
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type PublicSchema = Database[Extract<keyof Database, "public">]

export type Tables<
  PublicTableNameOrOptions extends
    | keyof (PublicSchema["Tables"] & PublicSchema["Views"])
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof (Database[PublicTableNameOrOptions["schema"]]["Tables"] &
        Database[PublicTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? (Database[PublicTableNameOrOptions["schema"]]["Tables"] &
      Database[PublicTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : PublicTableNameOrOptions extends keyof (PublicSchema["Tables"] &
        PublicSchema["Views"])
    ? (PublicSchema["Tables"] &
        PublicSchema["Views"])[PublicTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  PublicTableNameOrOptions extends
    | keyof PublicSchema["Tables"]
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? Database[PublicTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : PublicTableNameOrOptions extends keyof PublicSchema["Tables"]
    ? PublicSchema["Tables"][PublicTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  PublicTableNameOrOptions extends
    | keyof PublicSchema["Tables"]
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? Database[PublicTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : PublicTableNameOrOptions extends keyof PublicSchema["Tables"]
    ? PublicSchema["Tables"][PublicTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  PublicEnumNameOrOptions extends
    | keyof PublicSchema["Enums"]
    | { schema: keyof Database },
  EnumName extends PublicEnumNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = PublicEnumNameOrOptions extends { schema: keyof Database }
  ? Database[PublicEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : PublicEnumNameOrOptions extends keyof PublicSchema["Enums"]
    ? PublicSchema["Enums"][PublicEnumNameOrOptions]
    : never
