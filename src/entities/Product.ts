// Product.ts
import { Entity, Column, PrimaryGeneratedColumn, ManyToOne, JoinColumn, CreateDateColumn, UpdateDateColumn } from 'typeorm';
import { Category } from './Category';

@Entity('products') // Ensure table name matches exactly
export class Product {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    productName: string;

    @Column()
    description: string;

    @Column('decimal', { precision: 10, scale: 2 })
    price: number;

    @Column()
    stockQuantity: number;

    @ManyToOne(() => Category, (category) => category.products, { eager: true })
    @JoinColumn({ name: 'categoryId' }) // Ensure proper foreign key
    category: Category;

    @CreateDateColumn()
    createdAt: Date;

    @UpdateDateColumn()
    updatedAt: Date;
}
