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
      AgeRatings: {
        Row: {
          category: string
          createdAt: string
          id: string
          logo: string | null
          organization: string
        }
        Insert: {
          category: string
          createdAt?: string
          id?: string
          logo?: string | null
          organization: string
        }
        Update: {
          category?: string
          createdAt?: string
          id?: string
          logo?: string | null
          organization?: string
        }
        Relationships: []
      }
      Companies: {
        Row: {
          country: string
          createdAt: string
          establishedDate: string
          id: string
          logo: string | null
          name: string
        }
        Insert: {
          country: string
          createdAt?: string
          establishedDate: string
          id?: string
          logo?: string | null
          name: string
        }
        Update: {
          country?: string
          createdAt?: string
          establishedDate?: string
          id?: string
          logo?: string | null
          name?: string
        }
        Relationships: []
      }
      Games: {
        Row: {
          createdAt: string
          description: string
          grid: Json
          hero: Json
          id: string
          logo: Json
          name: string
          releaseDate: string
          slug: string
        }
        Insert: {
          createdAt?: string
          description: string
          grid?: Json
          hero?: Json
          id?: string
          logo?: Json
          name: string
          releaseDate: string
          slug: string
        }
        Update: {
          createdAt?: string
          description?: string
          grid?: Json
          hero?: Json
          id?: string
          logo?: Json
          name?: string
          releaseDate?: string
          slug?: string
        }
        Relationships: []
      }
      GamesAgeRatings: {
        Row: {
          createdAt: string
          id: string
          idAgeRating: string
          idGame: string
        }
        Insert: {
          createdAt?: string
          id?: string
          idAgeRating: string
          idGame: string
        }
        Update: {
          createdAt?: string
          id?: string
          idAgeRating?: string
          idGame?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_GamesAgeRatings_idAgeRating_fkey"
            columns: ["idAgeRating"]
            isOneToOne: false
            referencedRelation: "AgeRatings"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "public_GamesAgeRatings_idGame_fkey"
            columns: ["idGame"]
            isOneToOne: false
            referencedRelation: "Games"
            referencedColumns: ["id"]
          }
        ]
      }
      GamesDevelopers: {
        Row: {
          createdAt: string
          id: string
          idCompany: string
          idGame: string
        }
        Insert: {
          createdAt?: string
          id?: string
          idCompany: string
          idGame: string
        }
        Update: {
          createdAt?: string
          id?: string
          idCompany?: string
          idGame?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_GamesDevelopers_idCompany_fkey"
            columns: ["idCompany"]
            isOneToOne: false
            referencedRelation: "Companies"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "public_GamesDevelopers_idGame_fkey"
            columns: ["idGame"]
            isOneToOne: false
            referencedRelation: "Games"
            referencedColumns: ["id"]
          }
        ]
      }
      GamesGenres: {
        Row: {
          createdAt: string
          id: string
          idGame: string
          idGenre: string
        }
        Insert: {
          createdAt?: string
          id?: string
          idGame: string
          idGenre: string
        }
        Update: {
          createdAt?: string
          id?: string
          idGame?: string
          idGenre?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_GamesGenres_idGame_fkey"
            columns: ["idGame"]
            isOneToOne: false
            referencedRelation: "Games"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "public_GamesGenres_idGenre_fkey"
            columns: ["idGenre"]
            isOneToOne: false
            referencedRelation: "Genres"
            referencedColumns: ["id"]
          }
        ]
      }
      GamesPublishers: {
        Row: {
          createdAt: string
          id: string
          idCompany: string
          idGame: string
        }
        Insert: {
          createdAt?: string
          id?: string
          idCompany: string
          idGame: string
        }
        Update: {
          createdAt?: string
          id?: string
          idCompany?: string
          idGame?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_GamesPublishers_idCompany_fkey"
            columns: ["idCompany"]
            isOneToOne: false
            referencedRelation: "Companies"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "public_GamesPublishers_idGame_fkey"
            columns: ["idGame"]
            isOneToOne: false
            referencedRelation: "Games"
            referencedColumns: ["id"]
          }
        ]
      }
      GamesThemes: {
        Row: {
          createdAt: string
          id: string
          idGame: string
          idTheme: string
        }
        Insert: {
          createdAt?: string
          id?: string
          idGame: string
          idTheme: string
        }
        Update: {
          createdAt?: string
          id?: string
          idGame?: string
          idTheme?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_GamesThemes_idGame_fkey"
            columns: ["idGame"]
            isOneToOne: false
            referencedRelation: "Games"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "public_GamesThemes_idTheme_fkey"
            columns: ["idTheme"]
            isOneToOne: false
            referencedRelation: "Themes"
            referencedColumns: ["id"]
          }
        ]
      }
      Genres: {
        Row: {
          abbreviationName: string | null
          createdAt: string
          id: string
          name: string
        }
        Insert: {
          abbreviationName?: string | null
          createdAt?: string
          id?: string
          name: string
        }
        Update: {
          abbreviationName?: string | null
          createdAt?: string
          id?: string
          name?: string
        }
        Relationships: []
      }
      Platforms: {
        Row: {
          "alternativeName ": string[] | null
          createdAt: string
          family: string
          id: string
          name: string
          releaseDate: string
          type: string
        }
        Insert: {
          "alternativeName "?: string[] | null
          createdAt?: string
          family: string
          id?: string
          name: string
          releaseDate: string
          type: string
        }
        Update: {
          "alternativeName "?: string[] | null
          createdAt?: string
          family?: string
          id?: string
          name?: string
          releaseDate?: string
          type?: string
        }
        Relationships: []
      }
      Themes: {
        Row: {
          createdAt: string
          id: string
          name: string
        }
        Insert: {
          createdAt?: string
          id?: string
          name: string
        }
        Update: {
          createdAt?: string
          id?: string
          name?: string
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

export type Tables<
  PublicTableNameOrOptions extends
    | keyof (Database["public"]["Tables"] & Database["public"]["Views"])
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof (Database[PublicTableNameOrOptions["schema"]]["Tables"] &
        Database[PublicTableNameOrOptions["schema"]]["Views"])
    : never = never
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? (Database[PublicTableNameOrOptions["schema"]]["Tables"] &
      Database[PublicTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : PublicTableNameOrOptions extends keyof (Database["public"]["Tables"] &
      Database["public"]["Views"])
  ? (Database["public"]["Tables"] &
      Database["public"]["Views"])[PublicTableNameOrOptions] extends {
      Row: infer R
    }
    ? R
    : never
  : never

export type TablesInsert<
  PublicTableNameOrOptions extends
    | keyof Database["public"]["Tables"]
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicTableNameOrOptions["schema"]]["Tables"]
    : never = never
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? Database[PublicTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : PublicTableNameOrOptions extends keyof Database["public"]["Tables"]
  ? Database["public"]["Tables"][PublicTableNameOrOptions] extends {
      Insert: infer I
    }
    ? I
    : never
  : never

export type TablesUpdate<
  PublicTableNameOrOptions extends
    | keyof Database["public"]["Tables"]
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicTableNameOrOptions["schema"]]["Tables"]
    : never = never
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? Database[PublicTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : PublicTableNameOrOptions extends keyof Database["public"]["Tables"]
  ? Database["public"]["Tables"][PublicTableNameOrOptions] extends {
      Update: infer U
    }
    ? U
    : never
  : never

export type Enums<
  PublicEnumNameOrOptions extends
    | keyof Database["public"]["Enums"]
    | { schema: keyof Database },
  EnumName extends PublicEnumNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicEnumNameOrOptions["schema"]]["Enums"]
    : never = never
> = PublicEnumNameOrOptions extends { schema: keyof Database }
  ? Database[PublicEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : PublicEnumNameOrOptions extends keyof Database["public"]["Enums"]
  ? Database["public"]["Enums"][PublicEnumNameOrOptions]
  : never
